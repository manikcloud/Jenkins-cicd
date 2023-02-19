# Tomcat Project 
0. Git clone & 

```
git clone https://github.com/manikcloud/Jenkins-cicd.git
```
00. Chang the directory 

```
cd Jenkins-cicd
```

00. change the branch

```
git switch  8.1-addressbook  
```
1. Install tomcat
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