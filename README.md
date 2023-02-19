# Installing Docker in Ubuntu 

```
sudo apt install docker.io -y
sudo systemctl start docker 
sudo systemctl enable docker 

```

# Installing Docker in Amazon linux
```
sudo yum install docker -y 
sudo systemctl start docker 
sudo systemctl enable docker 

```

# Simple Python Flask Dockerized Application#

- Git clone &
```
git clone https://github.com/manikcloud/Jenkins-cicd.git

```
- change the branch
```
git switch  python-flask-app
```
## Build the image using the following command

```bash
sudo docker build -t flask-app:latest .
```

Run the Docker container using the command shown below.

```bash
sudo docker run -d -p 5000:5000 flask-app

```

- The application will be accessible at http:127.0.0.1:5000 
- If you are using AWS EC2 VM then first find ip address  and the use the ip `http://<host_ip>:5000`


# Jenkins Job setup "execute shell"

```

echo "running python-flask-app project"
#sudo docker rmi `docker images -aq` -f
sudo docker rm -f `docker ps -aq` 
sudo docker build -t flask-app:$BUILD_ID .
sudo docker run -d -p 5000:5000 flask-app:$BUILD_ID

```

## Common Error
 Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: connect: permission denied

- to overcome this error plz run the below command:
```
chmod 777 /var/run/docker.sock
```