# geek_profile_task
In this repository, i used the code from:
[https://www.geeksforgeeks.org/profile-application-using-python-flask-and-mysql/](https://www.geeksforgeeks.org/profile-application-using-python-flask-and-mysql/)

#### The aim is to:
- Containerize the application
- Run in a kubernetes cluster
- Use a jenkins pipeline to push the image automatically to DockerHub

#### Run Code by building an image and run a container:
- clone the code :
 `git clone 'https://github.com/AnwarHb/geek_profile_task.git'`
- change into the code directory:
 `cd geek_profile_task`
- build the image using the docker compose file:
 `docker-compose up --build -d`
- to stop running use:
 `docker-compose down`

#### Run in kubernetes cluster:
- start minikube and enable ingress if needed:
 `minikube start`
 `minikube addons enable ingress`
- apply the yaml files to build the cluster objects:
 `kubectl apply -f envConfig.yml`
 
 `kubectl apply -f sqlConfig.yml`
 
 `kubectl apply -f sqlVolume.yml`
 
 `kubectl apply -f deployment.yml`
 or:
 `Kubectl apply -f .`
- in windows you may need to run in a tunnel to access the application:
 `minikube tunnel`
- you will be able ro see the application in :
 [http://localhose/geek](http://localhose/geek)
 
#### Pods and services:
pods : 
[![](https://github.com/AnwarHb/geek_profile_task/blob/master/pods.png?raw=true)](https://github.com/AnwarHb/geek_profile_task/blob/master/pods.png?raw=true)
services:
[![](https://github.com/AnwarHb/geek_profile_task/blob/master/services.png?raw=true)](https://github.com/AnwarHb/geek_profile_task/blob/master/services.png?raw=true)

#### Pushing image to DockerHub:
A jenkins pipeline was created to push the image to a docker registory in DockerHub
you can pull the image by: `docker pull anwarhb/geek-profile`
[![](https://github.com/AnwarHb/geek_profile_task/blob/master/geek-image.png?raw=true)](https://github.com/AnwarHb/geek_profile_task/blob/master/geek-image.png?raw=true)
