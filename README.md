# Lesson 5 Demo 2: Building Continuous Integration Pipelines in Jenkins

This section will guide you to: 

●	Build Continuous Integration Pipelines in jenkins

This lab has two sub-sections, namely:
   1 Building a Maven project
   2 Creating a Pipeline to build the project
     
## Step 1:  Building a Maven project

●	Log in to your Github account

●	Click on the plus icon next to the profile picture and select New repository from the drop-down menu
 


●	Fill the required fields in the create repository form

●	Click on the Create Repository button

●	Click on the Clone or download button and copy the URL

●	Go to start.spring.io/ 


●	Select Maven as the project type

●	Fill Group and Artifact with appropriate values. For example, com.simplilearn and Calculator

●	Add Web (Spring Web) to Dependencies

●	Select Packaging: Jar

●	Select Java: 8

●	Click on Generate Project

●	The generated skeleton project should be downloaded as a zip file

●	Open the terminal and navigate to an appropriate location

●	Run git clone [URL] to clone the repository

●	Unzip the downloaded spring boot project to the cloned repository

```
cd Downloads
unzip Calculator.zip

```

●	Copy the contents of Calculator folder present in downloads and paste it into your repository folder)

●	Commit the changes to the remote SCM

●	Run git add .

●	Run git commit -m “Add logic and test” 

●	Run git push -u origin master


## Step 2:  Creating a Pipeline

●	Go to Jenkins dashboard

●	Click on New Item

●	Enter a name for your build job

●	Select Pipeline as the build job type
 

●	Click OK

##	Scroll down to the Pipeline section and enter the script below:

```
pipeline {
	agent any
	tools {
    	maven 'my_mvn'
	}
	stages {
    	stage("Checkout") {   
        	steps {               	 
            	git url: '<YourGithubRepoURL>'          	 
           	 
        	}    
    	}
    	stage('Build') {
        	steps {
        	sh "mvn compile"  	 
        	}
    	}
   	 
    	stage("Unit test") {          	 
        	steps {  	 
            	sh "mvn test"          	 
       	}
}
}
}

```
●	Click Save
 

●	Click Build Now in the project window to make sure that the build works. Jenkins will now build your project.

●	Click on the Build History to view the build results

●	Click on the Logs to view the build logs in each stage







