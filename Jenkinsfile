pipeline{
    agent { label 'linux' } 

    environment {
        DOCKERHUB_CREDINTIALS = credentials('dockerhub')
    }

    stages {
        stage ('git clone') {
            steps {
                git 'https://github.com/ndrohith09/node-jenkins.git'
            }
        }
        stage ('Install dependencies'){
            steps {
                sh 'npm install' 
            }
        }
        stage ('Build'){
            steps {
                sh 'docker build -t ndrohith09/node-jenkins:latest .' 
            }
        }

        stage ('Login'){
            steps {
                sh 'echo $DOCEKRHUB_CREDINTIALS | docker login -U $DOCKERHUB_CREDINTIALS_USR --password-stdin' 
                // sh 'echo $DOCEKRHUB_CREDINTIALS | docker login --username=${DOCKERHUB_CREDINTIALS.username} --password=${DOCKERHUB_CREDINTIALS.password}' 
            }
        }

        stage ('Push'){
            steps {
                sh 'docker push ndrohith09/node-jenkins:latest .' 
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}