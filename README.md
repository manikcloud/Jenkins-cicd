# Java
## References: 
- https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html


## Build with Maven option in jenkins 
## pom.xml file required
## Commands

# Creating a Project
You need somewhere for your project to reside. Create a directory somewhere and start a shell in that directory. On your command line, execute the following Maven goal:

```
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

```

You will notice that the generate goal created a directory with the same name given as the artifactId. Change into that directory.

```
cd my-app

```

## Build the Project
```
mvn package

```

- validate
- generate-sources
- process-sources
- generate-resources
- process-resources
- compile


You may test the newly compiled and packaged JAR with the following command:
```
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
Which will print the quintessential:
```
Hello World!

# Lesson 3 Demo 3: Maven Setup

This section will guide you to: 
⦁	Configure build tools and JDK versions

This lab has two sub-sections, namely:
⦁	    Configuring the Maven setup 
⦁	    Configuring the JDK
     
## Step 1:  Configuring the Maven setup 
⦁	Open the terminal and go to Jenkins dashboard by typing localhost:8081 in your browser
⦁	Click on Manage Jenkins. From the list of options, choose Manage Plugins.

 

⦁	Under the Available tab, select Maven Integration
 

⦁	Click on Install without restart and the plugin will be installed

 

⦁	Go to https://maven.apache.org/download.cgi and download the binary zip file
 

⦁	Unzip and extract the file and copy the path.
```
$ cd /home/labsuser/Downloads
$ unzip apache-maven-3.6.3-bin.zip
```
⦁	Go to Manage Jenkins from the Jenkins dashboard and select Global Tool Configuration
⦁	Scroll down to the Maven section and click on Add Maven
 
⦁	You can choose to install automatically by ticking the checkbox and specifying the version, or uncheck the box and enter the local path if you want to configure manually.
⦁	Enter a name for the installation (For Example: my_maven)
⦁	Uncheck the Install automatically checkbox.
⦁	Paste the path to the Maven file in the MAVEN_HOME field (/home/labsuser/Downloads/apache-maven-3.6.3) and click Save

 
⦁	You can now find Maven project as an option under New Item.
 


			
## Step 2:   Configuring the JDK
⦁	Go to Manage Jenkins from the Jenkins dashboard and select Global Tool Configuration
⦁	Scroll down to the JDK Section and click on Add JDK
 

⦁	You can choose to install automatically by ticking the checkbox and specifying the version. Uncheck the box if you want to enter the JDK path manually

 
⦁	Enter the path to the JDK in the JAVA_HOME field (/usr/lib/jvm/java-8-openjdk-amd64/) and click Save
