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

# Jenkins installation on UBUNTU 18.04 & Ubuntu 22.04 

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
sudo apt-get update -y && sudo apt install jenkins -y
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
