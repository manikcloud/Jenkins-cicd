# Lesson 9 Demo 1: Create Multiple Slave Nodes
This section will guide you to:
●	Create a master/slave architecture in Jenkins.
```
Please Note: You need to have Jenkins installed to proceed with this demo.

This guide has two subsections, namely:
1.	Login to Jenkins
2.	Create slave nodes

Step 1: Log in to Jenkins
●	Open your browser and navigate to localhost:8081
●	Provide your username and password and click on Login
Step 2: Create slave nodes
●	Navigate to Manage Jenkins
●	Click on Configure Global Security
 
●	Scroll down to Agents and enable inbound traffic at port 9007
●	Click on Apply and then click on Save
●	Navigate to Manage Jenkins
●	Click on Manage Node and Clouds
●	Click on New Node
●	Enter a node_name (slave-node-1) and check the permanent agent button
●	Click on Ok
 
●	Provide name, number of executors, root directory path, label, usage, launch method, as shown below:
 
●	Click on Save
●	Once the configuration is complete, you can see the slave machine on the dashboard.
``` 

●	Click on the slave-node-1 

●	Create a directory at the path specified as the Remote root directory


●	Download the jar file in the /opt/jenkins by running the following command:

```
sudo mkdir /opt/jenkins
cd /opt/jenkins
sudo wget http://localhost:8081/jnlpJars/agent.jar
```

●	Now copy the command shown in the agent slave-node-1
 
●	Run the command to start the slave node

```
sudo java -jar agent.jar -jnlpUrl http://localhost:8081/computer/slave-node-1/jenkins-agent.jnlp -secret 148b28d72377036274a65403bd41f9fcae30d710aaacc2a6590fb7e031e893e4 -workDir "/opt/jenkins"
```
●	The slave node will show as connected to the master UI
 

# 9.2 Build job with slave machine
●	Create a new freestyle job.
```
●	In the configuration page, check the Restrict where this project can be run option as shown in the screenshot below and select slave-node-1

 

●	Provide the URL to the repository of the source code in the Source Code Management section
Please note: you can use the sample-git repository that we had created in the earlier demos
 

●	Click on Apply and then click on Save
●	Build the job and check the output in the console

```
