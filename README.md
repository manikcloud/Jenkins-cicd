
# Project Title: Building a CI/CD Pipeline with Jenkins

## Project objective: 

Use Jenkins to set up a CI/CD pipeline that will compile and test a Maven project and deploy it to a Tomcat Server.

- Background of the problem statement: 

You’re a DevOps engineer at Pied Piper, a software company that provides web and mobile app development services. Your team is tasked with building a web app for an online book shop named Bookzy. The developers have decided to use Springboot to generate the project, Maven for compilation, and Git as the Source Code Management system for the project. You’re required to set up a Jenkins pipeline that involves three different freestyle jobs for code compilation, testing, and deployment respectively. Your Pipeline has to poll the SCM nightly for commits, build the project, and trigger the test job if the build is stable. The test job has to run unit tests, publish the JUnit test report, and trigger the freestyle job for deployment. The deployment job is required to package the Maven project, deploy the war file to a Tomcat server, and notify you via email if deployment failed.

You must use the following: 

●	Java: To create the website
●	Git: As a version control system for the program
●	Jenkins: To create the build pipeline
●	Spring boot: To create the Maven app
●	Maven: To compile the program
●	Tomcat: To host the website
●	AWS EC2: To run Tomcat
●	JUnit: To run tests and publish results

The following requirements should be met: 

●	The app should be built with Maven.
●	The Tomcat server should allow remote deployment.
●	The pipeline should consist of three freestyle jobs for compilation, test, and deployment respectively.

Prerequisite:

●	To create the Maven project, go to start.spring.io/ and select Maven as the project type. Enter Group and Artifact values and click on Generate.


# Solution 

# Jenkins CI/CD Project for Java Spring Boot Tomcat

This README file contains the necessary steps for setting up a Jenkins CI/CD pipeline for a Java Spring Boot project using Tomcat as the application server. We will be using the sample project at https://github.com/manikcloud/manik-calculator.git.

## Part 1: Setup Jenkins and Tomcat

1. Install Jenkins and Tomcat on your server.
2. Clone the repository:

```
git clone https://github.com/manikcloud/manik-calculator.git
```
3. Set user permissions for Jenkins and Tomcat.

## Part 2: Create a Jenkins Job for Deployment with the Deploy to Container Plugin

1. Go to the Jenkins dashboard and click on 'New Item'.
2. Enter a name for your build job and select 'Freestyle project' as the build job type.
3. In the configuration page, scroll down to the 'Source Code Management' section and select 'Git'.
4. Add the repository URL: https://github.com/manikcloud/manik-calculator.git
5. Install and configure the 'Deploy to Container' plugin.
6. Configure the build triggers, build steps, and post-build actions for the deployment job.

## Part 3: Set User Permissions for Jenkins and Tomcat

1. Grant Jenkins user necessary permissions to access the project directory.
2. Configure Tomcat user and group permissions for the application.
3. Update the Tomcat server.xml file to allow connections from the Jenkins server.

1. Add Jenkins user to the Tomcat group:

```
sudo usermod -a -G tomcat jenkins
```

2. Grant read and execute permissions to the Tomcat group for the necessary directories:

```
sudo chmod -R g+rx /opt/tomcat
sudo chmod -R g+rx /var/lib/tomcat9/webapps
```

3. Restart the Tomcat service to apply the changes:
sudo systemctl restart tomcat9


4. Restart the Jenkins service to apply the changes:

```
sudo systemctl restart jenkins
```
With these changes in place, the Jenkins user should now have the necessary permissions to deploy applications to the Tomcat server.


