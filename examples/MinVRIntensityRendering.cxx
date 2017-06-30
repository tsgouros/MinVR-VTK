#include <vtkSmartPointer.h>
#include <vtkCamera.h>
#include <vtkFiniteDifferenceGradientEstimator.h>
#include <vtkImageClip.h>
#include <vtkPiecewiseFunction.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRenderer.h>
#include <vtkStructuredPoints.h>
#include <vtkStructuredPointsReader.h>
#include <vtkVolume.h>
#include <vtkVolumeProperty.h>
#include <vtkFixedPointVolumeRayCastMapper.h>
#include <vtkColorTransferFunction.h>

#include <api/MinVR.h>

class ExampleVTKApp: public MinVR::VRApp {
    private:
        // variables that were orginally global go here
    
    public:
      ExampleVTKApp(int argc, char** argv):
        MinVR::VRApp(argc, argv) {
            // scene
            // shader and lights
            // files
        }
      /// The MinVR apparatus invokes this method whenever there is a new
	  /// event to process.
	  void onVREvent(const MinVR::VREvent &event) {
        // Quit if the escape button is pressed
		if (event.getName() == "KbdEsc_Down") {
			shutdown();
        }
      }
          
      /// The onVRRender methods are the heart of the MinVR rendering
      /// apparatus.  Some render calls are shared among multiple views,
      /// for example a stereo view has two renders, with the same render
      /// context.
      void onVRRenderGraphicsContext(const MinVR::VRGraphicsState &renderState) {

        // Check if this is the first call.  If so, do some initialization. 
        if (renderState.isInitialRenderCall()) {
//          _checkContext();
//          _initializeScene();
//          _scene.prepare();
        }
      }
          
      /// This is the heart of any graphics program, the render function.
      /// It is called each time through the main graphics loop, and
      /// re-draws the scene according to whatever has changed since the
      /// last time it was drawn.
	void onVRRenderGraphics(const MinVR::VRGraphicsState &renderState) {
		// Only draw if the application is still running.
		if (isRunning()) {

      
        }
    }
};


int main(int argc, char *argv[])
{
  if(argc < 2)
  {
    std::cerr << "Required arguments: vtkFile" << std::endl;
    return EXIT_FAILURE;
  }

  std::string filename = argv[1]; //  "/Data/ironProt.vtk";

  // Create the renderers, render window, and interactor
  vtkSmartPointer<vtkRenderWindow> renWin = 
    vtkSmartPointer<vtkRenderWindow>::New();
  vtkSmartPointer<vtkRenderWindowInteractor> iren = 
    vtkSmartPointer<vtkRenderWindowInteractor>::New();
  iren->SetRenderWindow(renWin);
  vtkSmartPointer<vtkRenderer> ren =
    vtkSmartPointer<vtkRenderer>::New();
  renWin->AddRenderer(ren);
   
  // Read the data from a vtk file
  vtkSmartPointer<vtkStructuredPointsReader> reader = 
    vtkSmartPointer<vtkStructuredPointsReader>::New();
  reader->SetFileName(filename.c_str());
  reader->Update();
 
  // Create a transfer function mapping scalar value to opacity
  vtkSmartPointer<vtkPiecewiseFunction> oTFun = 
    vtkSmartPointer<vtkPiecewiseFunction>::New();
  oTFun->AddSegment(0, 1.0, 256, 0.1);
 
  vtkSmartPointer<vtkColorTransferFunction> cTFun = 
    vtkSmartPointer<vtkColorTransferFunction>::New();
  cTFun->AddRGBPoint(   0, 1.0, 1.0, 1.0 );
  cTFun->AddRGBPoint( 255, 1.0, 1.0, 1.0 );
 
  // Need to crop to actually see minimum intensity
  vtkSmartPointer<vtkImageClip> clip = 
    vtkSmartPointer<vtkImageClip>::New();
  clip->SetInputConnection( reader->GetOutputPort() );
  clip->SetOutputWholeExtent(0,66,0,66,30,37);
  clip->ClipDataOn();
 
  vtkSmartPointer<vtkVolumeProperty> property = 
    vtkSmartPointer<vtkVolumeProperty>::New();
  property->SetScalarOpacity(oTFun);
  property->SetColor(cTFun);
  property->SetInterpolationTypeToLinear();
 
  vtkSmartPointer<vtkFixedPointVolumeRayCastMapper> mapper = 
    vtkSmartPointer<vtkFixedPointVolumeRayCastMapper>::New();
  mapper->SetBlendModeToMinimumIntensity();
  mapper->SetInputConnection( clip->GetOutputPort() );
 
  vtkSmartPointer<vtkVolume> volume = 
    vtkSmartPointer<vtkVolume>::New();
  volume->SetMapper(mapper);
  volume->SetProperty(property);
 
  ren->AddViewProp(volume);
  renWin->Render();
  iren->Start();
    
  // Is the MINVR_ROOT variable set?  MinVR usually needs this to find
  // some important things.
  if (getenv("MINVR_ROOT") == NULL) {
    std::cout << "***** No MINVR_ROOT -- MinVR might not be found *****" << std::endl 
              << "MinVR is found (at runtime) via the 'MINVR_ROOT' variable."
              << std::endl << "Try 'export MINVR_ROOT=/my/path/to/MinVR'."
              << std::endl;
  }
  
  // Initialize the app.
  ExampleVTKApp app(argc, argv);

  // Run it.
  app.run();
 
  return EXIT_SUCCESS;
}