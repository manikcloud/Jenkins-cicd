# Tomcat Project 
1. Install tomcat
 ```
sudo apt install tomcat9 tomcat9-admin

```
2. change the port number 8080 to 8090

- sudo vim  /var/lib/tomcat9/conf/server.xml

```
 <Connector port="8090" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />


```

- Restart tomcat

``` sudo systemctl restart tomcat9
```
- Go to pom location and run the below command

```
 mvn clean install 
```
- copy and paste the war file in tomcat webapp location 
```
sudo cp target/addressbook.war /var/lib/tomcat9/webapps/
```

-


