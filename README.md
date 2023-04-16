Copy code
# Lesson 4 Demo 7: Building From Tags

This section will guide you to: 
- Configure a build job in Jenkins to build from a Git tag

This lab has three sub-sections, namely:
1. Adding the Git parameter plugin to Jenkins
2. Creating a tag in Git
3. Building a project from a Git tag in Jenkins

## Step 1: Adding the Git parameter plugin to Jenkins
- Go to Jenkins dashboard.
- Click on Manage Jenkins in the Jenkins dashboard and select Manage Plugins.
- Under the Available tab, search for Git Parameter and select it.
- Click on Install without restart, and the plugin will be installed.

## Step 2: Creating a tag in Git
- Go to https://github.com/manikcloud/Jenkins-cicd.git and open the repository.
- Click on the releases tab.
- Click on the Create a new release button.
- Enter a tag name and fill out the other form fields.
- Click Publish release at the bottom.

## Step 3: Building a project from a Git tag in Jenkins
- Go to Jenkins dashboard.
- Click on New Item in the Jenkins dashboard.
- Enter a name for your build job.
- Select Freestyle project as the build job type.
- Click OK.
- On the configuration page, select the checkbox next to the text that states, This project is parameterized.
- Click on the Add parameter button that appears.
- From the drop-down menu that appears, select Git parameter.
- Name the Git parameter tag, and choose parameter type Tag.
- Add a default value (main).
- Scroll down to the Source Code Management section and select Git.
- Enter the link to the repository in the field that appears: https://github.com/manikcloud/Jenkins-cicd.git
- In the Branches to Build field, enter the variable name as, ${tag}
- Click Save.
- Click Build With Parameters in the project window to make sure the build works.
- In the page that appears, accept the defaults if correct or enter the tag value, and click the Build button. Jenkins will now build your project.
- Click on the Build History to view the build results.
- Click on the Console Output to view the build logs.