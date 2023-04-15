# Lesson 4 Demo 5: Building Projects with Gradle

This section will guide you to: 
Build projects with Gradle in jenkins

This lab has three sub-sections, namely:
   1. Configuring Gradle plugin for Jenkins
   2. Creating a Gradle project
   3. Building a project with Gradle in Jenkins
     
Please Note: Gradle plugin is installed by default. In case you don’t have it installed, you can install the same by following the step 1.

## Step 1:  Configuring Gradle plugin for Jenkins


⦁	Go to Jenkins dashboard.

⦁	Click on Manage Jenkins and select Manage Plugins.
 

⦁	Under the Available tab, select Gradle.
 

⦁	Click on Install without restart and the plugin will be installed.
 

⦁	Click on Manage Jenkins and select Global Tool Configuration.

⦁	Scroll down to the Gradle section and click on Add Gradle.
 
⦁	Check the Install automatically box and specify a name for the installation.
 

⦁	Click Save.

## Step 2:  Creating a Gradle project

⦁	Open the terminal.

⦁	If you don’t have gradle installed, run sudo apt-get install gradle command

⦁	Create a new directory and navigate to it

```
mkdir gradle-demo  
cd gradle-demo
```

⦁	Run gradle init to create a sample gradle project.
 

⦁	Go to github.com and create a new repository.
 

⦁	Push the gradle project to the repository as shown below:
 
```
git init
git add .
git commit -m “First Commit”
git remote add origin <your repository URL>
git push -u origin master
```
 

## Step 3:  Building a project with Gradle in Jenkins


⦁	Go to Jenkins dashboard.

⦁	Click on New Item.

⦁	Enter a name for your build job.

⦁	Select Freestyle project as the build job type.
 

⦁	Click OK.

⦁	Scroll down to the Source Code Management section and select Git.

⦁	Enter the link to the repository in the field that appears.
 

⦁	Scroll down to the Build section and click on Add build step.

⦁	Select Invoke Gradle Script from the drop down that appears.

⦁	Fill up the form as shown below:
 

⦁	Scroll down to the Post-build Actions tab and click on the Add post-build action button.

⦁	From the drop down, select Email notification and fill the recipient address in the textbox that appears.

⦁	Click Save.

⦁	Click Build Now in the project window to make sure that the build works. Jenkins will now build your project.

⦁	Click on the Build History to view the build results.

⦁	Click on the Console Output to view the build logs.


# Gradle Project on Linux terminal 

```
mkdir my_gradle
cd my_gradle/
gradle init --type java-application

./gradlew run

```