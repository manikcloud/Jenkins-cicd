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