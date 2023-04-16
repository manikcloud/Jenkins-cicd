# Lesson 4 Demo 4: Post-Build Actions

This section will guide you to:
- Configure post-build actions

This lab has two sub-sections, namely:
1. Configuring SMTP settings to enable email alerts in Jenkins
2. Defining post-build actions in a build and testing the SMTP settings

## Step 1: Configure SMTP settings to enable email alerts in Jenkins
- Go to Jenkins dashboard.
- Click on Manage Jenkins in the Jenkins dashboard and select Configure System.

- Scroll down to the end of the page to the Email Notification section.
- Click on the Advanced button to reveal advanced settings.
- Fill the fields with appropriate values as shown below:

SMTP server: smtp.gmail.com
Default user email suffix: @gmail.com
User Name: <your email Id>
Password: <your Gmail app password>
Tick the Use SSL checkbox
Port: 465

Reference: https://varunmanik1.medium.com/devops-jenkins-aws-series-part-3-jenkins-notifications-and-gmail-integration-a-step-by-step-bb2cac5dbd4c

- Select the Test configuration by sending test e-mail and enter a recipient email to test the configuration.
- Click Save

## Step 2: Defining post-build actions in a build and testing the SMTP settings
- Go to Jenkins dashboard.
- Click on New Item.
- Enter a name for your build job.
- Select Freestyle project as the build job type.

- Click OK.

- Scroll down to the Source Code Management section and select Git.
- Enter the link to the repository in the field that appears.

- Scroll down to the Build section and click on Add build step.
- Select Execute Shell from the drop down that appears.
- Enter the following maven command in the textbox that appears:
mvn compile

- Scroll down to the Post-build Actions tab and click on the Add post-build action button.
- From the drop down, select Email notification and fill the recipient address in the textbox that appears.

- Click on the Add post-build action button.
- From the drop down, select Delete workspace when build is done.
- Click Save.

- Introduce an error in the Maven project to be built and commit to Git. An extra build tag is added in the pom.xml below.

- Click Build Now in the project window to make sure that the build works. Jenkins will now build your project.
- Click on the Build History to view the build results.
- Click on the Console Output to view the build logs.

- Check the email to see the notification.
