# Manik Calculator - Java Web Application

Manik Calculator is a Java-based web application that allows users to perform basic arithmetic operations such as addition, subtraction, multiplication, and division. The application features a user-friendly GUI and is built using Spring MVC.

## Features

- Perform addition, subtraction, multiplication, and division operations
- User-friendly web interface
- Error handling for invalid inputs
- Spring MVC framework
- Maven for build automation
- Docker support for containerization
- JMeter tests for load testing
- Smoke testing script
- No IDE required, fully configured for CLI usage

## Prerequisites

- Java Development Kit (JDK) installed on your system
- Maven installed on your system
- Docker installed on your system

## Installation

1. Clone the repository:

```
git clone https://github.com/manikcloud/manik-calculator.git
```

Navigate to the project directory: 

```
cd manik-calculator
```

Change the branch in Git 

```
git switch -c 7.3-sonarcube-docker
```


# Manik-Calculator: SonarQube, Maven and Jenkins Integration

This readme provides a step-by-step guide for installing SonarQube and configuring Jenkins job to integrate with the Manik-Calculator project.

## SonarQube Docker Installation

* Before installing SonarQube using Docker, ensure that your system meets the following prerequisites:

- **Minimum 8GB RAM to run SonarQube container smoothly.**

If you meet the prerequisites, follow these steps to install SonarQube using Docker:

1. Ensure Docker is installed on your system. If it's not installed, download and install Docker from above mentioned command. 


## SonarQube Docker Installation

1. Ensure Docker is installed on your system. If it's not installed, download and install Docker from the official Docker website.

2. Open your terminal and run the following command to download the SonarQube Docker image:

```
docker pull sonarqube
```

3. Once the image is downloaded, run the following command to start a SonarQube container:

```
docker run -d --name sonarqube -p 9000:9000 sonarqube
```

4. Access the SonarQube web interface by opening your web browser and navigating to `http://44.206.250.166:9000`.

5. Once the SonarQube web interface is up and running, log in using the default credentials:

- Username: `admin`
- Password: `admin`

6. Create a new project in SonarQube by following the instructions on the SonarQube web interface. 

## Jenkins Job Configuration

1. Ensure Jenkins is installed on your system. If it's not installed, download and install Jenkins from the official Jenkins website.

2. Open your Jenkins dashboard and navigate to `Manage Jenkins` > `Manage Plugins`. 

3. Install the following plugins:

- SonarQube Scanner
- Git

4. Once the plugins are installed, create a new Jenkins job by clicking on `New Item` and selecting `Freestyle project`.

5. In the `General` section, give your job a name and specify the Git repository URL for the Manik-Calculator project.

6. In the `Build` section, add the following build step:

```
mvn clean package sonar:sonar -Dsonar.host.url=http://44.206.250.166:9000 -Dsonar.login=admin -Dsonar.password=admin
```

This command will run the `mvn` command to build the Manik-Calculator project and then run the SonarQube Scanner to analyze the code and send the results to the SonarQube server running at `http://44.206.250.166:9000`.

7. Save your Jenkins job and run it. Once the job has finished running, you can view the SonarQube analysis report by logging in to the SonarQube web interface and navigating to the project you created in step 6 of the SonarQube Docker installation section.

## Hiding SonarQube Password in Jenkins

To hide your SonarQube password in Jenkins, you can use the Jenkins credentials plugin to store your password securely and reference it in your Jenkins job configuration. Here are the steps to do so:

1. Install the Jenkins credentials plugin if it's not already installed.

2. Go to Jenkins dashboard and navigate to `Credentials` > `System` > `Global credentials` > `Add Credentials`.

3. Choose `Username with password` as the kind of credentials.

4. Enter your SonarQube username in the `Username` field.

5. Enter your SonarQube password in the `Password` field.

6. Give the credentials an `ID` and a `Description` for future reference.

7. In your Jenkins job configuration, replace the `sonar.login` and `sonar.password` arguments in the `mvn` command with the following:

```
-Dsonar.login=${SONAR_USER} -Dsonar.password=${SONAR_PASSWORD}
```

This will reference the SonarQube username and password stored in the Jenkins credentials plugin.

8. Under `Build Environment` section of your Jenkins job configuration, add the `Use secret text(s) or file(s)` option.

9. In the `Bindings` section, click on `Add` and choose `Username and password (separated)` option.

10. In the `Username Variable` field, enter `SONAR_USER`.

11. In the `Password Variable` field, enter `SONAR_PASSWORD`.

12. In the `Username Credentials` dropdown, choose the credentials you created in step 2.

13. Save your Jenkins job and run it. The SonarQube password will now be securely stored in Jenkins and not visible in your job configuration.

Congratulations! You have successfully integrated the Manik-Calculator project with SonarQube and Jenkins.
