Lesson 9 Demo 1: Create Multiple Slave Nodes
This section will guide you to:
●	Create a master/slave architecture in Jenkins.

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
 

●	Click on the slave-node-1 

●	Create a directory at the path specified as the Remote root directory

sudo mkdir /opt/jenkins

cd opt/jenkins

●	Download the jar file in the /opt/jenkins by running the following command:

sudo wget http://localhost:8081/jnlpJars/agent.jar

●	Now copy the command shown in the agent slave-node-1
 

●	Run the command to start the slave node
sudo java -jar agent.jar -jnlpUrl http://localhost:8081/computer/slave-node-1/slave-agent.jnlp -workDir "/opt/jenkins"
 
●	The slave node will show as connected to the master UI
 
