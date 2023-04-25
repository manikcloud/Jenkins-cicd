# Build Projects with Gradle in Jenkins

This guide will walk you through building projects with Gradle in Jenkins, using the following GitHub repository and branch:

- Repository: https://github.com/manikcloud/Jenkins-cicd.git
- Branch: 4.5-gradle

This lab has three sub-sections, namely:

1. Configuring Gradle plugin for Jenkins
2. Creating a Gradle project
3. Building a project with Gradle in Jenkins

**Note**: Gradle plugin is installed by default. In case you don’t have it installed, you can install the same by following the steps :

## Gradle Installation on Ubuntu

Before creating a Gradle project, ensure that Gradle is installed on your Ubuntu system. Follow these steps to install Gradle:

1. Update package lists for upgrades and package dependencies:

   ```
   sudo apt-get update
   ```

2. Install the required software-properties-common package:

   ```
   sudo apt-get install software-properties-common
   ```

3. Add the official Gradle PPA (Personal Package Archive) to your system:

   ```
   sudo add-apt-repository ppa:cwchien/gradle
   ```

4. Update package lists to include the Gradle PPA:

   ```
   sudo apt-get update
   ```

5. Install Gradle:

   ```
   sudo apt-get install gradle
   ```

6. Verify the Gradle installation:

   ```
   gradle -v
   ```

Once Gradle is installed, you can proceed with creating a Gradle project as described in the guide.




## Gradle Project on Linux Terminal

1. Create a new directory and navigate to it:

   ```
   mkdir my_gradle
   cd my_gradle/
   ```

2. Initialize the Gradle project:

   ```
   gradle init --type java-application
   ```

3. Run the Gradle project:

   ```
   ./gradlew run
   ```

## Step 1: Configuring Gradle plugin for Jenkins

1. Go to Jenkins dashboard.
2. Click on `Manage Jenkins` and select `Manage Plugins`.
3. Under the `Available` tab, select `Gradle`.
4. Click on `Install without restart` and the plugin will be installed.
5. Click on `Manage Jenkins` and select `Global Tool Configuration`.
6. Scroll down to the `Gradle` section and click on `Add Gradle`.
7. Check the `Install automatically` box and specify a name for the installation.
8. Click `Save`.

## Step 2: Creating a Gradle project

1. Open the terminal.
2. If you don’t have Gradle installed, run `sudo apt-get install gradle` command.
3. Create a new directory and navigate to it:

   ```
   mkdir gradle-demo  
   cd gradle-demo
   ```

## Step 3: Building a project with Gradle in Jenkins

1. Go to Jenkins dashboard.
2. Click on `New Item`.
3. Enter a name for your build job.
4. Select `Freestyle project` as the build job type.
5. Click `OK`.
6. Scroll down to the `Source Code Management` section and select `Git`.
7. Enter the link to the repository in the field that appears.
8. Scroll down to the `Build` section and click on `Add build step`.
9. Select `Invoke Gradle Script` from the drop-down that appears.
10. In the form, choose the Gradle installation configured in step 1, and enter the tasks you want to run (e.g., `clean build`) in the `Tasks` field.

11. Scroll down to the `Post-build Actions` tab and click on the `Add post-build action` button.
12. From the drop-down, select `Email notification` and fill the recipient address in the textbox that appears.
13. Click `Save`.
14. Click `Build Now` in the project window to make sure that the build works. Jenkins will now build your project.
15. Click on the `Build History` to view the build results.
16. Click on the `Console Output` to view the build logs.

# Disclaimer
<details>

Please note that the entire repository is owned and maintained by [Varun Kumar Manik](https://www.linkedin.com/in/vkmanik/). While every effort has been made to ensure the accuracy and reliability of the information and resources provided in this repository, Varun Kumar Manik takes full responsibility for any errors or inaccuracies that may be present.

Simplilearn is not responsible for the content or materials provided in this repository and disclaims all liability for any issues, misunderstandings, or claims that may arise from the use of the information or materials provided. By using this repository, you acknowledge that Varun Kumar Manik is solely accountable for its content, and you agree to hold Simplilearn harmless from any claims or liabilities that may arise as a result of your use or reliance on the information provided herein.

It is important to understand that this repository contains educational materials for a training course, and users are expected to apply their own judgment and discretion when utilizing the provided resources. Neither Varun Kumar Manik nor Simplilearn can guarantee specific results or outcomes from following the materials in this repository.

</details>

## Connect & Follow

For more info, please connect and follow me:

- Github: [https://github.com/manikcloud](https://github.com/manikcloud)
- LinkedIn: [https://www.linkedin.com/in/vkmanik/](https://www.linkedin.com/in/vkmanik/)
- Email: [varunmanik1@gmail.com](mailto:varunmanik1@gmail.com)
- Facebook: [https://www.facebook.com/cloudvirtualization/](https://www.facebook.com/cloudvirtualization/)
- YouTube: [https://bit.ly/32fknRN](https://bit.ly/32fknRN)
- Twitter: [https://twitter.com/varunkmanik](https://twitter.com/varunkmanik)

