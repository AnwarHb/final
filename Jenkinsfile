pipeline{
  // pipeline to login to dockerhub and push the image 
	agent any
  // enviroment varible for dockerhub login credrntials
	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
	stages {

		
    // build the image and give a tag
		stage('Build the image') {
			steps {
				dir('./') {
					sh 'sudo docker build -t anwarhb/geeks_profile:latest .'
				}

			}
		}
    // login to dockerHub
		stage('login to DockerHub') {
			steps {
				sh 'sudo echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
    // push to dockerHub
		stage('Push') {
			steps {
				sh 'sudo docker push anwarhb/geeks_profile'
			}
		}
	}
  // log out feom DockerHub
	post {
		always {
			sh 'sudo docker logout'
		}
	}
}
