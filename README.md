
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



## Part 2: Create a Jenkins Job for Deployment with the Deploy to Container Plugin

1. Go to the Jenkins dashboard and click on 'New Item'.
2. Enter a name for your build job and select 'Freestyle project' as the build job type.
3. In the configuration page, scroll down to the 'Source Code Management' section and select 'Git'.


```
git clone https://github.com/manikcloud/manik-calculator.git
```
4. Install and configure the 'Deploy to Container' plugin:
- Go to 'Manage Jenkins' > 'Manage Plugins'.
- Click on the 'Available' tab and search for 'Deploy to container'.
- Select the 'Deploy to container Plugin' checkbox and click on 'Install without restart'.

5. Configure the build triggers, build steps, and post-build actions for the deployment job:
- Build Triggers: Choose the desired build trigger, such as 'Build after other projects are built', 'Poll SCM', or 'Build periodically'.
- Build Steps: 
    - Click on 'Add build step' and select 'Invoke top-level Maven targets'.
    - Set the 'Maven Version' and enter 'clean package' in the 'Goals' field.
- Post-build Actions:
    - Click on 'Add post-build action' and select 'Deploy war/ear to a container'.
    - In the 'WAR/EAR files' field, enter '**/*.war'.
    - Click 'Add Container' and choose 'Tomcat 9.x'.
    - Enter the 'Tomcat URL' (e.g., http://localhost:8080).
    - Add the credentials for the Tomcat manager (username and password).
    - Set the 'Context path' for the deployed application (e.g., /manik-calculator).

6. Save the configuration and click on 'Build Now' to start the deployment job.


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


## Step 4: Creating an EC2 instance

1. Log in to the AWS lab account provided.
2. Click on Services at the top left to view the drop-down list of resources.
3. Click on EC2 under the Compute menu from the drop-down list.
4. Click on the Launch Instance button and select Launch Instance from the menu.
5. Choose an Amazon Machine Image (AMI) from the list of AMIs and click on Select.
6. Choose an Instance Type and click Review and Launch.
7. Click on Launch.
8. In the pop-up menu, select Create a new key-value pair.
9. Click on Download Key. You’ll need this key to SSH to the VM later.
10. Click on Launch.
11. Navigate to the security groups console.
12. Add a rule to the security group to which the instance belongs to allow SSH, with the following settings:
   - Type: SSH
   - Protocol: TCP
   - Port Range: 22
   - Source: Anywhere 0.0.0.0/0
13. Add a rule to the security group to which the instance belongs to allow http traffic to port 8081, with the following settings:
   - Type: Custom TCP Rule
   - Protocol: TCP
   - Port Range: 8081
   - Source: Anywhere 0.0.0.0/0

## Step 5: Installing Tomcat on EC2

1. Open the terminal.
2. Navigate to the location where the AWS key is stored.
3. Make the key file executable with the command `chmod 400 <key-name>.pem`
4. SSH to the EC2 instance with the command `sudo ssh -i <key-name>.pem ubunutu@<public-dns>`
5. Run the following commands to install Java, Maven, Tomcat, and Tomcat admin:

```
sudo apt update -y
sudo apt install maven tomcat9 tomcat9-admin -y
```


2. change the port number 8080 to 8090

```
sudo vim  /var/lib/tomcat9/conf/server.xml
```
- Find port 8080 and change to 8090 & add this address="0.0.0.0"

```
 <Connector port="8090" protocol="HTTP/1.1"
               address="0.0.0.0"
               connectionTimeout="20000"
               redirectPort="8443" />


```

- Restart tomcat

``` 
sudo systemctl restart tomcat9

```
- Go to pom location and run the below command

```
 mvn clean install 
```
- copy and paste the war file in tomcat webapp location 
```
sudo cp target/addressbook.war /var/lib/tomcat9/webapps/ -v
```

- url 
```
http://localhost:8090/addressbook/

```
# Configuring Tomcat Web Management Interface

- At this point, you should be able to access Tomcat with a web browser on port 8090. The web management interface is not accessible because we have not created a user yet.

- Tomcat users and roles are defined in the tomcat-users.xml file. This file is a template with comments and examples showing how to create a user or role.

- In this example, we’ll create a user with “admin-gui” and “manager-gui” roles. The “admin-gui” role allows the user to access the /host-manager/html URL and create, delete, and otherwise manage virtual hosts. The “manager-gui” role allows the user to deploy and undeploy web application without having to restart the entire container through the /host-manager/html interface.

- Open the tomcat-users.xml file and create a new user, as shown belo

```
sudo vim /etc/tomcat9/tomcat-users.xml
```
Open this file and below lines

```

   <role rolename="admin-gui,manager-gui,manager-script,manager-jmx,manager-status,admin-gui"/>
  <user username="admin" password="admin" roles="manager-gui,admin-gui,manager-script"/>
  <user username="robot" password="admin" roles="manager-script"/>
  ```

### Restart your Tomacat sever

```
sudo systemctl restart tomcat9
```

## log in to this url 

http://3.91.21.117:8090/manager/html

##  Deploy your war file 
Choose your WAR file to deploy in the GUI and access your application here:

http://3.91.21.117:8090/addressbook/
