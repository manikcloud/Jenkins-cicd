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

# JENKINS INSTALLATION 

```
sudo apt install openjdk-8-jdk
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt install jenkins
sudo /etc/init.d/jenkins start
service jenkins status 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
history | cut -c 8- 
```
