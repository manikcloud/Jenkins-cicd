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
$ docker build -t flask-app:latest .
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 flask-app

```

- The application will be accessible at http:127.0.0.1:5000 
- If you are using AWS EC2 VM then first find ip address  and the use the ip `http://<host_ip>:5000`
