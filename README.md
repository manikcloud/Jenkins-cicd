
# Install Maven on Ubuntu and Create a Simple Maven Project

### Previous Branch Details

In the previous branch, we created a simple Java HelloWorld program using the Java command line. You can review the previous branch for more information.

### Clone the Repository and Switch to the `3.1.1-maven-style` Branch

1. Clone the repository to your local machine by running the following command:
```
git clone https://github.com/manikcloud/Jenkins-cicd.git
```
2. Navigate to the cloned repository:
```
cd Jenkins-cicd/
```
3. Switch to the `3.1.1-maven-style` branch by running the following command:

```
git switch 3.1.1-maven-style
```

Now that you have switched to the `3.1.1-maven-style` branch.

# Maven Installation on Ubuntu

1. Install Maven on your Ubuntu machine by running the following command:

2. Verify the Maven installation by running:

3. Create a simple Maven project using the following command:

4. Install the `tree` package to view the project structure:

5. Navigate to the `my-app` directory:

6. Display the project structure using the `tree` command:

7. Build the Maven project by running:

8. Execute the Java program from the Maven project:

java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App


### Next Steps

In the next step, we will configure Maven in Jenkins and create a Maven job in Jenkins to build and run the project.





```
sudo apt install maven
mvn --version

mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
sudo apt install tree -y

cd my-app/

tree
mvn install

tree
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
```

