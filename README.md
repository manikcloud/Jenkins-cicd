# Jenkins-CICD (Simplilearn Tutorial)

It's 24-hours hands-on instructor-led training program covers Jenkins and CI/CD concepts, with topics distributed across 9 lessons. This GitHub repository contains all the hands-on lab materials on different branches.

## Course Outline

- Lesson 1: Course Introduction
- Lesson 2: Introduction to CI/CD
- Lesson 3: Getting Started With Jenkins
- Lesson 4: Build Jobs and Configurations
- Lesson 5: Configuring Build Pipelines
- Lesson 6: Automated Testing In Jenkins
- Lesson 7: Code Quality Improvement using Jenkins
- Lesson 8: Automated Deployment and Continuous Delivery
- Lesson 9: Distributed System In Jenkins
- Course-end project
- QnA

For detailed information on each lesson, see the full course outline below.


## Repository Structure

Each branch in the Jenkins-CICD Simplilearn tutorial can have its own README file with step-by-step instructions for completing the hands-on exercises.

This repository contains hands-on lab materials on different branches:

- main
- 0.1_create_ec2_tf
- 0.2_ansible_install_jenkins
- 3.1-free-style
- 3.1.1-maven-style
- 3.1.2-free-style
- 4.4_email_notification
- 4.5-gradle
- 4.6_string_parameter
- 4.7_tag_parameter
- 4.8_remote_trigger
- 4.9_enabling_security
- 5.1-helloworld-pipeline
- 5.2-pipeline-no-jenkinsfile
- 5.3-maven-jenkinsfile-pipeline
- 5.4-snippet-generator
- 5.5_restarting_pipeline
- 6.01-junit-maven
- 6.02-jacoco
- 6.03-Jacoco-pipeline-job
- 6.03-JacocoPublisher
- 6.04-Clover
- 7.0-sonarqube-lab
- 7.1-sonarqube-ec2
- 7.3-sonarcube-docker
- 7.4-findbug-pmd-checkstyle
- 7.5complexity-scatter-plot
- 8.1-addressbook
- 8.2-python-flask-app
- 8.3-php-docker
- 9.1-master-slave
- 9.2-final-project

GitHub repository: [https://github.com/manikcloud/Jenkins-cicd.git](https://github.com/manikcloud/Jenkins-cicd.git)


Here's a template you can use as a starting point for each branch's README file:
## Branch Name - Hands-on Lab

### Overview

Provide a brief overview of the hands-on exercise and its objectives.

### Prerequisites

List any prerequisites for the exercise, including software installations, system configurations, or prior knowledge.

### Step-by-Step Instructions

1. **Step 1:** Describe the first step in the exercise.
2. **Step 2:** Describe the second step in the exercise.
3. **Step 3:** Describe the third step in the exercise.
4. ...

-----------------------------------------------------------------------------------------------------------
## Full Course Outline

<details>
<summary>Click to expand the full course outline</summary>

### Lesson 1: Course Introduction
- Course Objectives
- Course Outline
- Prerequisites of this course
- Highlights of this course

### Lesson 2: Introduction to CI/CD

By the end of this lesson, you will be able to explain:

- Traditional Software Development
- Continuous Integration
- Continuous Delivery
- Continuous Deployment
- Building the continuous deployment process
- Automated Deployment Pipeline
- CI/CD Tool Selection

### Learning Objectives

1. The traditional delivery process
2. Drawbacks of the traditional delivery process
3. Introduction to Continuous Integration
4. Advantages of Continuous Integration
5. Continuous Delivery and Continuous Deployment
6. Continuous Delivery
7. Continuous Deployment
8. Advantages of Continuous Deployment
9. Pre-requisites to CI/CD
10. Introducing Tools for Continuous Delivery Process
11. Stages of a CI/CD pipeline
    - Source Stage
    - Build Stage
    - Test Stage
    - Deploy Stage
12. Implementation of CI/CD
13. CI/CD Tool Selection
    - Jenkins
    - TeamCity
    - Bamboo
    - Travis CI
    - Circle CI
14. Knowledge checks and quizzes


### Lesson 3: Getting Started With Jenkins
...

### Lesson 4: Build Jobs and Configurations
...

### Lesson 5: Configuring Build Pipelines
...

### Lesson 6: Automated Testing In Jenkins
...

### Lesson 7: Code Quality Improvement using Jenkins
...

### Lesson 8: Automated Deployment and Continuous Delivery
...

### Lesson 9: Distributed System In Jenkins
...

</details>


---------------------------------------------------------------------------------------------------------
# Jenkins-cicd 
PG DO - CI/CD Pipeline with Jenkins Simplilearn 

# AWS Ubuntu VM Provisioning steps
-	Step 1:  Click on Launch Instance 
-	Step 2 : Click on Software Image (AMI)
-	Select Ubuntu 
-	Step 4: Key pair name – required
-	Click on Create new key pair
-	Put key pair name Jenkins-sl
-	& Download it 
-	Step 5 : Click on Launch Instance 
-	Step 6 : Select your VM and Click connect 
-	Step 7 :  You can see the terminal 
-	Step: Showing Github example

# Git Status
```
git --version 
```
## cretae Dir 
```
mkdir demo 
cd  demo 
```
## GIT & Ubuntu SSH connection
```
ssh-keygen 

"Hit enter button 3 time"

cat ~/.ssh/id_rsa.pub 
git clone git@github.com:manikcloud/Jenkins-cicd.git
history 
history | cut -c 8- 
```

# Jenkins installation on UBUNTU 18.04 & Ubuntu 22.04 (Please skip the step 2 & 3 for 22.04)

### Step 1
```
sudo apt-get update -y && sudo apt install openjdk-8-jdk -y
```
### Step 2: Downloading Key
```
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add
```

### Step 3: Adding Key
```
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
```

### Step 4: Jenkins Package installation
```
sudo apt-get update -y
sudo apt install jenkins -y
sudo /etc/init.d/jenkins start
sudo service jenkins status 
```
### Step 5: Jenkins default password
```
sudo cat /home/labsuser/jenkins/secrets/initialAdminPassword
```
### Step 6: History command

```
history | cut -c 8- 

```
# Jenkins URL with port 8080
- http://x.x.x.x:8080/

Replace x with your ip 

# Change Security group rule for Jenkins 
```
-	Select your instance 
-	Down below select your security tab 
-	Click on the Security groups sg-0c51908b5fa4abf75 (launch-wizard-2)
-	Click on the action 
-	Click on EDIT INBOUND RULE
-	Select custom TCP and put port 8080
-	Custom ip should be 0.0.0.0/0
-	Click on Save the rule
```

# Common error

```
getting "E: Unable to locate package openjdk-8-jdk" message on java update
```

# Resolution 
Run this command

```
sudo apt update -y
```
# Plugin Installation 
dashboard>manage>jenkins>manage plugins>maven integration



# Jenkins Setting

```
Java_Home
/usr/lib/jvm/java-8-openjdk-amd64/
```

# Post Build Step

```
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App

```

# This project is parameterized
```
echo "User First name is : $First_Name"
echo "User Last name is : $Last_Name"
echo "User Gender is : $Sex"

```
# References: 
1. https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html
2. https://maven.apache.org/download.cgi


| Feature                   | Scripted Pipeline                                            | Declarative Pipeline                                         |
|---------------------------|--------------------------------------------------------------|--------------------------------------------------------------|
| Syntax                    | Groovy-based DSL                                             | YAML-based DSL                                               |
| Structure                 | Procedural style, with stages defined as functions           | Declarative style, with stages defined as steps               |
| Stage definition          | Defined using `stage` step and block                         | Defined using `stages` section and `stage` steps             |
| Parallel stages           | Defined using `parallel` step and block                      | Defined using `parallel` directive                            |
| Agent definition          | Defined using `node` step and block                          | Defined using `agent` directive                               |
| Environment variables     | Defined using `env` map at the top of the script             | Defined using `environment` directive                         |
| Post-build actions        | Defined using `post` section                                 | Defined using `post` directive                                |
| Flow control              | Uses traditional `if-else` statements and loops              | Uses a declarative `when` directive for flow control          |
| Error handling            | Uses `try-catch-finally` statements for error handling        | Uses `catchError` and `error` directives for error handling   |
| Shared libraries support  | Supported                                                     | Supported                                                     |
