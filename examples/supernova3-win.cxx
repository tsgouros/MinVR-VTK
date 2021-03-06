#include <GL/glew.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include <glm/glm.hpp>
#include <glm/geometric.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <api/MinVR.h>
#include <main/VREventInternal.h>
#include <math/VRMath.h>

#include <vtkPolyData.h>
#include <vtkCleanPolyData.h>
#include <vtkPolyDataNormals.h>
#include <vtkDataSetAttributes.h>
#include <vtkPolyDataMapper.h>
#include <vtkActor.h>
#include <vtkCamera.h>
#include <vtkProperty.h>
#include <vtkPolyDataReader.h>
#include <vtkLookupTable.h>
#include <vtkObjectFactory.h>
#include <vtkExternalOpenGLRenderWindow.h>
#include <vtkOpenGLCamera.h>
#include <vtkNew.h>
#include <ExternalVTKWidget.h>
#include <vtkCamera.h>
#include <vtkTransform.h>
#include <vtkSmartPointer.h>
#include <vtkVersion.h>
#include <vtkColorTransferFunction.h>
#include <vtkSmoothPolyDataFilter.h>
#include <vtkPerspectiveTransform.h>
#include <vtkExternalOpenGLCamera.h>
#include <vtkLight.h>
#include <vtkExternalLight.h>
#include <vtkExternalOpenGLRenderer.h>

//annotation stuff
#include <vtkConeSource.h>
#include <vtkCustomPropPicker.h>
#include <vtkTextProperty.h>
#include <vtkCornerAnnotation.h>
#include <vtkVectorText.h>
#include <vtkFollower.h>
#include <vtkTextMapper.h>
#include <vtkTextActor.h>

using namespace std;

class DemoVRVTKApp: public MinVR::VRApp {
  // Data values that were global in the supernova2.cxx file are defined as
  // private members of the VRApp.
private:

    vtkNew<ExternalVTKWidget> externalVTKWidget;
	vtkSmartPointer<vtkRenderer> ren;
    vtkSmartPointer<vtkCustomExternalOpenGLCamera> camera;
    vector <vtkSmartPointer<vtkActor>> actors;
    vtkNew<vtkExternalOpenGLRenderWindow> renWin;
	vtkSmartPointer<vtkFollower> textActor;
	vtkSmartPointer<vtkVectorText> textSource;
    vector <const char *> titles;
    vector <const char *> annotations;
	vtkSmartPointer<vtkActor> LastPickedActor;
	vtkSmartPointer<vtkProperty> LastPickedProperty;
    vector <vtkSmartPointer<vtkActor>> OtherActors;
    vector <vtkSmartPointer<vtkProperty>> OtherProperties;
	vtkSmartPointer<vtkCustomPropPicker>  picker;
    int NUM_ACTORS = 7;
  
    // These functions from demo2.cpp are not needed here:
    //
    //    init()
    //    makeWindow()
    //    resizeWindow()
    //    ... also most of the processKeys() methods.
    //
    // The functionality of these methods is assumed by the MinVR apparatus.

    // This contains a bunch of sanity checks from the graphics
    // initialization of demo2.xx.  They are still useful with MinVR.
    void _checkContext() {

    // There is one more graphics library used here, called GLEW.  This
    // library sorts through the various OpenGL updates and changes and
    // allows a user to pretend that it's all a consistent and simple
    // system.  The 'core profile' refers to some modern OpenGL
    // enhancements that are not so modern as of 2017.  Set this to true
    // to get those enhancements.
    glewExperimental = true; // Needed for core profile
    if (glewInit() != GLEW_OK) {
      throw std::runtime_error("Failed to initialize GLEW");
    }

    // Now that we have a graphics context, let's look at what's inside.
    std::cout << "Hardware check: "
              << glGetString(GL_RENDERER)  // e.g. Intel 3000 OpenGL Engine
              << " / "
              << glGetString(GL_VERSION)    // e.g. 3.2 INTEL-8.0.61
              << std::endl;

    if (glewIsSupported("GL_VERSION_2_1")) {
      std::cout << "Software check: Ready for OpenGL 2.1." << std::endl;
    } else {
      throw std::runtime_error("Software check: OpenGL 2.1 not supported.");
    }

    // This is the background color of the viewport.
    glClearColor(0.1 , 0.0, 0.4, 1.0);

    // Now we're ready to start issuing OpenGL calls.  Start by enabling
    // the modes we want.  The DEPTH_TEST is how you get hidden faces.
    glEnable(GL_DEPTH_TEST);

    if (glIsEnabled(GL_DEPTH_TEST)) {
      std::cout << "Depth test enabled" << std::endl;
    } else {
      std::cout << "No depth test enabled" << std::endl;
    }

    // This is just a performance enhancement that allows OpenGL to
    // ignore faces that are facing away from the camera.
    glEnable(GL_CULL_FACE);
    }
    
    void initializePickers() {
        this->LastPickedActor = NULL;
        for(int i = 0; i < NUM_ACTORS; i++) {
            OtherActors.push_back(actors[i]);
        }
        for(int i = 0; i < NUM_ACTORS; i++) {
            OtherProperties.push_back(vtkProperty::New());
        }
    }
    
    // hard code Kim's annotations
    void initializeAnnotations() {
        annotations.push_back("Neutron Star: \nAt the center of Cas A is a neutron star, a small \nultra-dense star created by the supernova."); // sill (purple)
        annotations.push_back("Fiducial Jets: \nIn green, two jets of material are seen. \nThese jets funnel material and energy \nduring and after the explosion."); // jets (green)
        annotations.push_back("FeK (Chandra Telescope): \nThe light blue portions of this model \nrepresent radiation from the element \niron as seen in X-ray light from Chandra. \nIron is forged in the very core of the \nstar but ends up on the outside \nof the expanding ring of debris."); // fek (blue)
        annotations.push_back("ArII (Spitzer Telescope): \nThe yellow portions of the model represent \ninfrared data from the Spitzer Space Telescope. \nThis is cooler debris that has yet to \nbe superheated by a passing shock wave"); // arll (yellow)
        annotations.push_back("Si (Chandra Telescope): \nThe dark blue colored elements of the model \nrepresent the outer blast wave of the \nexplosion as seen in X-rays by Chandra as well \nas optical and infrared light, much of which is silicon."); // (dark blue)
        annotations.push_back("Outer Knots: \nThe red colored elements of the model represent \nthe outer blast wave of the explosion as seen in \nX-rays by Chandra as well as optical and infrared \nlight, much of which is silicon."); // outer knots (red)
        annotations.push_back("Reverse Shock Sphere: \nThe Cas A supernova remnant acts like a \nrelativistic pinball machine by accelerating \nelectrons to enormous energies. This \narea shows where the acceleration is taking \nplace in an expanding shock wave generated \nby the explosion."); // reverse shock sphere (pink)

        titles.push_back("Neutron Star"); // purple
        titles.push_back("Fiducial Jets"); // green
        titles.push_back("FeK (Chandra Telescope)"); // blue
        titles.push_back("ArII (Spitzer Telescope)"); // yellow
        titles.push_back("Si (Chandra Telescope, HETG)"); // dark blue
        titles.push_back("Outer Knots"); // red
        titles.push_back("Reverse Shock Sphere"); // pink
    }


    void _initializeScene() {
		ren = vtkSmartPointer<vtkRenderer>::New();
		textActor = vtkSmartPointer<vtkFollower>::New();
		textSource = vtkSmartPointer<vtkVectorText>::New();
		LastPickedActor = vtkSmartPointer<vtkActor>::New();
		LastPickedProperty = vtkSmartPointer<vtkProperty>::New();
		picker = vtkSmartPointer<vtkCustomPropPicker>::New();

        vtkNew<vtkExternalOpenGLRenderWindow> renWin;
        externalVTKWidget->SetRenderWindow(renWin.GetPointer());
        ren->SetActiveCamera(camera);
        renWin->AddRenderer(ren);
        externalVTKWidget->GetRenderWindow()->Render();

        /**********************************************************/

		vector <std::string> files;
		files.push_back(std::string("../../../data/cco-ascii.vtk"));
		files.push_back(std::string("../../../data/newjets-ascii.vtk"));
		files.push_back(std::string("../../../data/fekcorr-ascii.vtk"));
		files.push_back(std::string("../../../data/newar-ascii.vtk"));
		files.push_back(std::string("../../../data/newhetg-ascii.vtk"));
		files.push_back(std::string("../../../data/newopt-ascii.vtk"));
		files.push_back(std::string("../../../data/newsi-ascii.vtk"));

        for(int i = 0; i < NUM_ACTORS; i++) {
            vtkSmartPointer<vtkPolyDataReader> reader =
            vtkSmartPointer<vtkPolyDataReader>::New();
            reader->SetFileName(files[i].c_str());
            reader->Update();
            vtkSmartPointer<vtkPolyData> inputPolyData = reader->GetOutput();

            // Merge duplicate points, and/or remove unused points and/or remove degenerate cells
            vtkSmartPointer<vtkCleanPolyData> clean =
            vtkSmartPointer<vtkCleanPolyData>::New();
            clean->SetInputData(inputPolyData);

            vtkSmartPointer<vtkSmoothPolyDataFilter> smoothFilter =
            vtkSmartPointer<vtkSmoothPolyDataFilter>::New();
            smoothFilter->SetInputConnection(clean->GetOutputPort());
            smoothFilter->SetNumberOfIterations(15);
            smoothFilter->SetRelaxationFactor(0.1);
            smoothFilter->FeatureEdgeSmoothingOff();
            smoothFilter->BoundarySmoothingOn();
            smoothFilter->Update();

            // Update normals on newly smoothed polydata
            vtkSmartPointer<vtkPolyDataNormals> normals = vtkSmartPointer<vtkPolyDataNormals>::New();
            normals->SetInputConnection(smoothFilter->GetOutputPort());
            normals->ComputePointNormalsOn();
            normals->ComputeCellNormalsOn();
            normals->Update();

            vtkSmartPointer<vtkPolyDataMapper> mapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
            mapper->SetInputConnection(normals->GetOutputPort());
            mapper->ScalarVisibilityOff();

            vtkSmartPointer<vtkActor> actor =
            vtkSmartPointer<vtkActor>::New();
            actor->SetMapper(mapper);
            actor->GetProperty()->SetInterpolationToFlat();
            actor->GetProperty()->SetOpacity(1);

            ren->AddActor(actor);
            actors.push_back(actor);
        }

        // color actors
        actors[0]->GetProperty()->SetColor(0.97,0.45,0.91); // sill (purple)
        actors[1]->GetProperty()->SetColor(0.6,0.99,0.73); // jets (green)
        actors[2]->GetProperty()->SetColor(0.49,0.94,0.89); // fek (blue)
        actors[3]->GetProperty()->SetColor(0.95,0.95,0.33); // arll (yellow)
        actors[4]->GetProperty()->SetColor(0.26,0.59,0.94); // (dark blue)
        actors[5]->GetProperty()->SetColor(0.94,0.32,0.4); // outer knots (red)
        actors[6]->GetProperty()->SetColor(0.96,0.70,0.93); // reverse shock sphere (pink)


        /**********************************************************/
        
        //Create a cone
        vtkSmartPointer<vtkConeSource> coneSource =
        vtkSmartPointer<vtkConeSource>::New();
        coneSource->SetRadius(0.08);
        coneSource->Update();

        //Create a mapper and actor
        vtkSmartPointer<vtkPolyDataMapper> mapper =
        vtkSmartPointer<vtkPolyDataMapper>::New();
        mapper->SetInputConnection(coneSource->GetOutputPort());
        
        /**********************************************************/

		// create a mapper and actor
		vtkSmartPointer<vtkPolyDataMapper> textMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
		textMapper->SetInputConnection(textSource->GetOutputPort());
	
		textActor->SetMapper(textMapper);
		textActor->GetProperty()->SetColor(0,0,0);

		textActor->SetScale(0.1);	
		ren->AddActor(textActor);


		/**********************************************************/
	
		initializeAnnotations();
		initializePickers();
    
		ren->SetBackground(0.87, 0.88, 0.91);
		ren->ResetCamera();
    }


    public:
    bool movingSlide;
    bool picked;
    glm::mat4 lastWandPos;
    glm::mat4 slideMat;
    glm::mat4 textMat;
    glm::mat4 wandPos;
    glm::mat4 lastHeadPos;
    glm::mat4 headPos;
    const float* wp;
	int actorIndex;
	vtkSmartPointer<vtkActor> PickedActor;
    
	// Added by Tom
	glm::vec3 cameraTranslate;
	glm::mat4 cameraRotate;
	float joystickX, joystickY;

    DemoVRVTKApp(int argc, char** argv) :
    
    MinVR::VRApp(argc, argv) {
        movingSlide = false;
        double mm[16] = {1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1};
        slideMat = glm::mat4( mm[0],  mm[1], mm[2], mm[3],
                                            mm[4],  mm[5], mm[6], mm[7],
                                            mm[8],  mm[9],mm[10],mm[11],
                                            mm[12],mm[13],mm[14],mm[15]);
        lastWandPos = glm::mat4( mm[0],  mm[1], mm[2], mm[3],
                                            mm[4],  mm[5], mm[6], mm[7],
                                            mm[8],  mm[9],mm[10],mm[11],
                                            mm[12],mm[13],mm[14],mm[15]);
        textMat = glm::mat4( mm[0],  mm[1], mm[2], mm[3],
                                            mm[4],  mm[5], mm[6], mm[7],
                                            mm[8],  mm[9],mm[10],mm[11],
                                            mm[12],mm[13],mm[14],mm[15]);
		lastHeadPos = glm::mat4( mm[0],  mm[1], mm[2], mm[3],
                                            mm[4],  mm[5], mm[6], mm[7],
                                            mm[8],  mm[9],mm[10],mm[11],
                                            mm[12],mm[13],mm[14],mm[15]);
		cameraTranslate = glm::vec3(0, 0, 0);
		actorIndex = 7;
    }

    /// The MinVR apparatus invokes this method whenever there is a new
    /// event to process.
    void onVREvent(const MinVR::VREvent &event) {
        std::string eventName = event.getName();
		std::string newLine = "\n";

		//OutputDebugString((eventName + newLine).c_str());
		//OutputDebugString(dataIndex.c_str());
		//OutputDebugString(eventName.c_str());
        
        
        // Quit if the escape button is pressed
        if (eventName == "KbdEsc_Down") {
            shutdown();
        } 
        
        if (eventName == "Wand0_Move" || eventName == "HTC_Controller_Right" || eventName == "HTC_Controller_1") {  //Set up for Wand Movement
			
			std::vector<float> w = event.getInternal()->getDataIndex()->getValue("/" + eventName + "/State/Pose");
			wandPos = glm::mat4( w[0],  w[1], w[2], w[3],
                                            w[4],  w[5], w[6], w[7],
                                            w[8],  w[9],w[10],w[11],
                                            w[12],w[13],w[14],w[15]);

			joystickX = event.getInternal()->getDataIndex()->getValueWithDefault("/" + eventName + "/State/Axis0/XPos", 0.0f);
			joystickY = event.getInternal()->getDataIndex()->getValueWithDefault("/" + eventName + "/State/Axis0/YPos", 0.0f);


            if (movingSlide){ //when slide moving
                slideMat = (wandPos / lastWandPos) * slideMat; //update the model matrix for slide
            }

		    textMat = wandPos / lastWandPos * textMat;
            lastWandPos = wandPos;

		} else if (eventName == "HTC_HMD_1") {
			std::vector<float> h = event.getInternal()->getDataIndex()->getValue("/" + eventName + "/State/Pose");

			headPos = glm::mat4(h[0], h[1], h[2], h[3],
								h[4], h[5], h[6], h[7],
								h[8], h[9], h[10], h[11],
								h[12], h[13], h[14], h[15]);
		} else if (eventName == "Wand_Right_Btn_Down") {
            movingSlide = true;
        } else if (eventName == "Wand_Right_Btn_Up") {
            movingSlide = false;
            
        /*************************************************
         If statement with selection
         *************************************************/
        } else if (eventName == "B08_Down" || eventName == "HTC_Controller_Right_AButton_Pressed" || eventName == "HTC_Controller_1_AButton_Pressed") {
            
            // Get coordinates of wand in 3d space
            double x = wandPos[3];
            double y = wandPos[7];
            double z = wandPos[11];
            double clickPos[] = {x, y, z};


            // Pick from this location.
            picker->PickProp3DPoint(clickPos, ren);
            PickedActor = picker->GetActor();
            
            picked = true;
		} 

    }

    /// \brief Set the render context.
    ///
    /// The onVRRender methods are the heart of the MinVR rendering
    /// apparatus.  Some render calls are shared among multiple views,
    /// for example a stereo view has two renders, with the same render
    /// context.
    void onVRRenderGraphicsContext(const MinVR::VRGraphicsState &renderState) {

        // Check if this is the first call.  If so, do some initialization. 
        if (renderState.isInitialRenderCall()) {
          _checkContext();
          _initializeScene();
        }

		if (fabs(joystickY) > 0.1)
		  cameraTranslate += glm::vec3(wandPos * glm::vec4(0, 0, joystickY, 0));
		//if (fabs(joystickX) > 0.1)
		  //cameraRotate = glm::rotate(wandPos, joystickX * .0360f, glm::vec3(0.0, 1.0, 0.0));

		//textMat = wandPos;
		//textMat = glm::translate(textMat, glm::vec3(0, 0, 1));
	
	}
	
    /// This is the heart of any graphics program, the render function.
    /// It is called each time through the main graphics loop, and
    /// re-draws the scene according to whatever has changed since the
    /// last time it was drawn.
    void onVRRenderGraphics(const MinVR::VRGraphicsState &renderState) {
        // Only draw if the application is still running.
        if (isRunning()) {
            
            // Enable depth testing. Demonstrates OpenGL context being managed by external
            // application i.e. GLUT in this case.
            glEnable(GL_DEPTH_TEST);

            // Buffers being managed by external application i.e. GLUT in this case.
            glClearColor(1.0f, 1.0f, 1.0f, 0.0f); // Set background color to gray and opaque
            glClearDepth(1.0f);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // Clear the color buffer

            glFlush();  // Render now

            glEnable(GL_LIGHTING);
            glEnable(GL_LIGHT0);          
            
            
            // Second the load() step.  We let MinVR give us the projection
            // matrix from the render state argument to this method.
            const float* pm = renderState.getProjectionMatrix();
            glm::mat4 projMatrix = glm::mat4( pm[0],  pm[1], pm[2], pm[3],
                                            pm[4],  pm[5], pm[6], pm[7],
                                            pm[8],  pm[9],pm[10],pm[11],
                                            pm[12],pm[13],pm[14],pm[15]);

            // The draw step.  We let MinVR give us the view matrix.
            const float* vm = renderState.getViewMatrix();
            glm::mat4 viewMatrix = glm::mat4( vm[0],  vm[1], vm[2], vm[3],
                                            vm[4],  vm[5], vm[6], vm[7],
                                            vm[8],  vm[9],vm[10],vm[11],
                                            vm[12],vm[13],vm[14],vm[15]);

			viewMatrix = glm::translate(cameraRotate * viewMatrix, cameraTranslate);

            camera = (vtkExternalOpenGLCamera *)ren->GetActiveCamera();

            double view[16];
            for(int i = 0; i < 16; i++) {
                view[i] = glm::value_ptr(viewMatrix)[i];
            }

            camera->SetViewTransformMatrix(view);

            double proj[16];
            for(int i = 0; i < 16; i++) {
                proj[i] = glm::value_ptr(projMatrix)[i];
            }

            camera->SetProjectionTransformMatrix(proj);           

            double supernovaModel[16];
            for(int i = 0; i < 16; i++) {
                supernovaModel[i] = glm::value_ptr(slideMat)[i];
            }
            
            vtkSmartPointer<vtkMatrix4x4> sm = vtkSmartPointer<vtkMatrix4x4>::New();
            sm->DeepCopy(supernovaModel);
            sm->Transpose();
            for(int i = 0; i < NUM_ACTORS; i++) {
                actors[i]->SetUserMatrix(sm);
            }

	   if(picked) {
		   if (PickedActor == NULL) {
			   textSource->SetText("");
			   textSource->Update();
		   }
		 // If we picked something before, reset its property
            	if (this->LastPickedActor) {
                    this->LastPickedActor->GetProperty()->DeepCopy(this->LastPickedProperty);

                    for(int i = 0; i < NUM_ACTORS; i++) {
                    	this->OtherActors[i]->GetProperty()->DeepCopy(this->OtherProperties[i]);
                    }
            	}

            	this->LastPickedActor = PickedActor;

            	if (this->LastPickedActor) {
                    // Save the property of the picked actor so that we can
                    // restore it next time
                    this->LastPickedProperty->DeepCopy(this->LastPickedActor->GetProperty());
                    for(int i = 0; i < NUM_ACTORS; i++) {
                    	this->OtherProperties[i]->DeepCopy(this->OtherActors[i]->GetProperty());
                    }
                    // Highlight the picked actor by changing its properties
                    for(int i = 0; i < NUM_ACTORS; i++) {
                    	if(actors[i] != LastPickedActor) {
                            this->OtherActors[i]->GetProperty()->SetColor(0.87, 0.88, 0.91);
                    	} else {
                            this->LastPickedActor->GetProperty()->DeepCopy(this->LastPickedProperty);
							//textSource->SetText(annotations[i]);
							//textSource->Update();
                    	} 
                    }

                    this->LastPickedActor->GetProperty()->SetDiffuse(1.0);
                    this->LastPickedActor->GetProperty()->SetSpecular(0.0);
            	}

					picked = false;
			}

			double textModel[16];
			for(int i = 0; i < 16; i++) {
				textModel[i] = glm::value_ptr(headPos)[i];
			}

			vtkSmartPointer<vtkMatrix4x4> tm = vtkSmartPointer<vtkMatrix4x4>::New();
			tm->DeepCopy(textModel);
			tm->Transpose();
			textActor->SetUserMatrix(tm);

            
            externalVTKWidget->GetRenderWindow()->Render();
            // We let MinVR swap the graphics buffers.
            // glutSwapBuffers();
        }
    }
    
    };

    

    // The main function is just a shell of its former self.  Just
    // initializes a MinVR graphics object and runs it.
    int main(int argc, char **argv) {

    // Let's see what arguments the user invoked this program with.
    std::cout << "Invoked with argc=" << argc << " arguments." << std::endl;
    for (int i = 0; i < argc ; i++) {
    std::cout << "argv[" << i << "]: " << std::string(argv[i]) << std::endl;
    }

    // If there weren't enough args, throw an error and explain what the
    // user should have done.

    if (argc < 2) {
    throw std::runtime_error("\nNeed a config file.\nTry 'bin/supernova3 -c ../config/desktop-freeglut.xml'");

    }

    // Is the MINVR_ROOT variable set?  MinVR usually needs this to find
    // some important things.
    if (getenv("MINVR_ROOT") == NULL) {
    std::cout << "***** No MINVR_ROOT -- MinVR might not be found *****" << std::endl 
              << "MinVR is found (at runtime) via the 'MINVR_ROOT' variable."
              << std::endl << "Try 'export MINVR_ROOT=/my/path/to/MinVR'."
              << std::endl;
    }

    // Initialize the app.
    DemoVRVTKApp app(argc, argv);

    // Run it.
    app.run();

    // We never get here.
    return 0;
}
