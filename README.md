# Lesson 5 Demo 3: Building Continuous Integration Pipelines in Jenkins using a Jenkinsfile

This section will guide you to:
- Build Continuous Integration Pipelines in Jenkins

This lab has three sub-sections, namely:
1. Building a Maven project
2. Creating and committing a Jenkinsfile
3. Defining a Pipeline to build the project

## Step 1: Building a Maven project
- Login to your Github account.
- Click on the plus icon next to the profile picture and select New repository from the drop-down menu.
- Fill the required fields in the create repository form.
- Click on the Create Repository button.
- Click on the Clone or download button and copy the URL.
- Go to start.spring.io/
- Select Maven as the project type.
- Fill Group and Artifact with appropriate values. For example, com.simplilearn and Calculator1.
- Add Web (Spring Web) to Dependencies.
- Select Packaging as: jar
- Select Java: 8
- Click on Generate Project.
- The generated skeleton project should be downloaded as a zip file.
- Open the terminal
- Run git clone [URL] to clone the repository.
- Unzip the downloaded spring boot project to the cloned repository.

   \```bash
   cd Downloads
   unzip Calculator1.zip
   \```

- Copy the contents of Calculator1 folder present in downloads and paste it into your repository folder.
- Commit the changes to the remote SCM.
- Run git add .
- Run git commit -m "Add logic and test"
- Run git push -u origin master

## Step 2: Creating and committing a Jenkinsfile
- Navigate to the root directory where the pom.xml is.
- Open a new text file and add the following script to it.

   \```groovy
   pipeline {
       agent any
       stages {
           stage("Compile") {
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
   \```

- Save the file as Jenkinsfile with no extension.
- Commit the changes to the remote SCM.
- Run git add .
- Run git commit -m "Jenkinsfile"
- Run git push -u origin master

## Step 3: Creating a Pipeline
- Go to Jenkins dashboard.
- Click on New Item.
- Enter a name for your build job.
- Select Pipeline as the build job type.
- Click OK.
- On the configuration page, scroll down to the Pipeline section.
- Change Definition from Pipeline script to Pipeline script from SCM.
- Select Git in SCM.
- Add the repository URL: https://github.com/manikcloud/Jenkins-cicd.git
- Add the branch name: 5.3-maven-jenkinsfile-pipeline
- Click Save.
- Click on Build Now in the project window.
- Jenkins will now build your pipeline and output the logs.
## Clone Repository and Checkout Branch

This guide will walk you through cloning the following GitHub repository and checking out the specified branch:

- Repository: https://github.com/manikcloud/Jenkins-cicd.git
- Branch: 3.1.2-free-style

Follow these steps to clone the repository and checkout the branch:

1. Open the terminal.

2. Clone the repository:

   ```
   git clone https://github.com/manikcloud/Jenkins-cicd.git
   ```

3. Navigate to the cloned repository:

   ```
   cd Jenkins-cicd
   ```

4. Checkout the desired branch:

   ```
   5.2-pipeline-no-jenkinsfile
   ```



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

