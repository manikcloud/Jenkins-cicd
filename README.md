# Please click on below URL 
https://github.com/manikcloud/manik-calculator


Setting up Jenkins to run unit tests and publish Surefire reports
In this tutorial, we will cover how to configure Jenkins to run unit tests and publish Surefire reports for a Java project.

## Prerequisites:
A Jenkins server with a Java plugin installed
A Java project with unit tests and a build tool (such as Maven or Gradle) configured
The surefire-report:report goal added to the build configuration
The junit dependency added to the project
## Steps:
Open your Jenkins server and navigate to the desired job.

Click on the job and select "Configure" from the left-hand menu.

Scroll down to the "Build" section and click on "Add build step".

Select "Invoke top-level Maven targets" from the dropdown menu.

In the "Goals" field, enter clean test surefire-report:report.

Click on "Add post-build action" and select "Publish JUnit test result report" from the dropdown menu.

In the "Test report XMLs" field, enter the path to the Surefire reports. For example: 
```
**/target/surefire-reports/TEST-*.xml

```
Save the configuration and run the job.

Your Jenkins job should now run the unit tests and publish Surefire reports for the project.

Note: If you are using a different build tool or testing framework, the exact steps may vary. However, the general approach of adding a build step to run the tests and a post-build action to publish the results should be the same.

### Additional Steps for Pipeline Jobs:
If you are using a Pipeline job in Jenkins, you can use the Junit step to publish the Surefire reports. Here's an example of how to do it:

```
pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Build the project with Maven
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Run the tests and generate the Surefire reports
                sh 'mvn clean test surefire-report:report'
            }
            post {
                // Publish the JUnit test results
                junit '**/target/surefire-reports/TEST-*.xml'
            }
        }
    }
}

```
This Pipeline will run the build and test stages, and publish the JUnit test results using the junit step. Replace the path to the Surefire reports with the appropriate value for your project.

That's it! Your Jenkins Pipeline should now run the unit tests and publish the Surefire reports.




