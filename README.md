# Simple Java command for linux terminal in Jenkins 

# Jenkins Setup and Simple Java HelloWorld Program

In this branch (`3.1-free-style`), we will create a simple Java HelloWorld program . Once your Jenkins instance is ready, you can switch to this branch and follow the instructions below. In the next branch, we will set up Jenkins for Maven and run the same job from the freestyle project.



### Clone this repository to your local machine by running the command:
```
git clone https://github.com/manikcloud/Jenkins-cicd.git
```

2. Switch to the `0.1_create_ec2_tf` branch by running the command: 
```
git switch 3.1-free-style
```

#### Run Following Command 

```

javac HelloWorld.java
java HelloWorld

```

## Create a Simple Java HelloWorld Program

1. Create a new file named `HelloWorld.java` in your preferred directory.
2. Add the following Java code to the file:

```
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}

```

Save the file and close it.

Compile the Java program using the javac command:

```
javac HelloWorld.java

```

This command will create a file named HelloWorld.class, which is the compiled Java bytecode.

Run the compiled Java program using the java command:
```
java HelloWorld
```
The program should execute, and you should see the following output:

```
Hello, World!
```
This Java program simply outputs "Hello, World!" when executed. It serves as a basic example to help students understand Java code structure and the process of compiling and running Java programs.

## Explain the Java HelloWorld Program to Students
Describe the structure of a Java class, including the public class declaration and the class name HelloWorld.

Explain the main method and its role as the entry point for Java applications.
Discuss the System.out.println() method, which is used to print text to the console.

### What is next 
After explaining the Java HelloWorld program, you can proceed to the next branch to set up Jenkins for Maven and run the same job from a freestyle project.

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

