# Lesson 6 Demo 2: Code Coverage with JaCoCo
This section will guide you to:
●	Perform code coverage using JaCoCo in Jenkins for a Maven application.
``` 
This guide has four subsections, namely:
1.	Logging to Jenkins
2.	Adding JaCoCo in Jenkins
3.	Adding JaCoCo in Maven project
4.	Creating Jenkins job for Maven project

Step 1: Login to Jenkins

●	Open your browser and navigate to localhost:8081
●	Provide your username and password and click on Login.
Step 2: Add JaCoCo plugin in Jenkins

●	Navigate to Manage Jenkins -> Plugin Manager -> Available and find JaCoCo Plugin
●	Click on Install without restart
Step 3: Adding JaCoCo in Maven project

●	Create a maven project by executing the following command:

mvn archetype:generate -DgroupId=CodeCoverageDemo -DartifactId=MathOperations -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

●	Navigate to the maven project as shown below:
cd /home/labsuser/MathOperations
vi pom.xml

 


●	Delete the existing code in the pom.xml file and add the following code:

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>CodeCoverageDemo</groupId>
  <artifactId>MathOperations</artifactId>
  <packaging>jar</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>MathOperations</name>
  <url>http://maven.apache.org</url>
<properties>
		<jacoco.version>0.7.5.201505241946</jacoco.version>
		<junit.version>4.12</junit.version>
	</properties>

	<dependencies>
		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>${junit.version}</version>
			<scope>test</scope>
		</dependency>
	</dependencies>
	<build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>3.6.1</version>
				<configuration>
					<skipMain>true</skipMain>
					<skip>true</skip>
					<source>1.8</source>
					<target>1.8</target>
				</configuration>
			</plugin>
			<plugin>
				<groupId>org.jacoco</groupId>
				<artifactId>jacoco-maven-plugin</artifactId>
				<version>${jacoco.version}</version>
				<executions>
					<execution>
						<id>prepare-agent</id>
						<goals>
							<goal>prepare-agent</goal>
						</goals>
					</execution>
					<execution>
						<id>report</id>
						<phase>prepare-package</phase>
						<goals>
							<goal>report</goal>
						</goals>
					</execution>
					<execution>
						<id>post-unit-test</id>
						<phase>test</phase>
						<goals>
							<goal>report</goal>
						</goals>
						<configuration>
							<!-- Sets the path to the file which contains the execution data. -->

							<dataFile>target/jacoco.exec</dataFile>
							<!-- Sets the output directory for the code coverage report. -->
							<outputDirectory>target/jacoco-ut</outputDirectory>
						</configuration>
					</execution>
				</executions>
				<configuration>
					<systemPropertyVariables>
						<jacoco-agent.destfile>target/jacoco.exec</jacoco-agent.destfile>
					</systemPropertyVariables>
				</configuration>
			</plugin>
		</plugins>
	</build>
</project>

●	Save the file and exit using the command [esc] shift+:wq
●	Run the following commands:
cd /home/labsuser/MathOperations/src/main/java/CodeCoverageDemo
rm App.java
●	Create a file Operations.java using the below command:
vi Operations.java 

●	Add the following code in Operations.java file:

package CodeCoverageDemo;

public class Operations {

	public Integer add(Integer a, Integer b)
	{
		return a+b;
	}

}

●	Save the file and exit using the command [esc] shift+:wq
●	Now navigate to /MathOperations/src/test/java/CodeCoverageDemo by running the commands given below:
cd /home/labsuser/MathOperations/src/test/java/CodeCoverageDemo
rm AppTest.java
●	Create a file Operations.java using the below command:
vi OperationsTest.java 

●	Add the following code in OperationsTest.java file:

package CodeCoverageDemo;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class OperationsTest {

        @Test
        public void testAdd()
        {
                Operations operations = new Operations();
                Integer actual = operations.add(2, 6);
                Integer expected = 8;
                assertEquals(expected, actual);
        }
}

●	Save the file and exit using the command [esc] shift+:wq

Step 4: Creating Jenkins job for Maven project

●	To create a new job in Jenkins, open the Jenkins dashboard with your Jenkins URL. For example, http://localhost:8081/
●	Click on New Item. Enter the item name, select Maven Project and click OK
●	Once you click OK, the page will be redirected to its project form.
●	In the Build section of your job, for Root POM give the path of the pom.xml in your local system as shown: 
/home/labsuser/MathOperations/pom.xml


●	Build the job
●	You can see the console output for the status of the build

 
 



```