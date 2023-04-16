# Lesson 5 Demo 1: Hello-World Pipelines In Jenkins

This section will guide you to:
- Build multibranch pipelines in jenkins

This lab has two sub-sections, namely:
1. Configuring Pipeline plugin for Jenkins
2. Creating a Pipeline

## Step 1: Configuring Pipeline plugin for Jenkins
- Go to Jenkins dashboard.
- Click on Manage Jenkins and select Manage Plugins.
- Under the Available tab, select Pipeline.
- Click on Install without restart and the plugin will be installed.
- Click Save.

## Step 2: Creating a Pipeline
- Go to Jenkins dashboard.
- Click on New Item.
- Enter a name for your build job.
- Select Pipeline as the build job type.
- Click OK.
- Scroll down to the Pipeline section and enter the script below:

```
pipeline {     
    agent any     
    stages {         
        stage('First Stage') {
            steps {                 
                echo 'Hello World'          
            }         
        }         
        stage('Second Stage') {             
            steps {                 
                echo 'Hello Again'                 
                echo 'A third time Hello'             
            }     
        }   
    }
}
```
* Click Save.
* Click Build Now in the project window to make sure that the build works. 

* Jenkins will now build your project.
* Click on the Build History to view the build results.
* Click on the Logs to view the build logs in each stage.