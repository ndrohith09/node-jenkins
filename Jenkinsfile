pipeline{
    agent { label 'linux' } 

    environment {
        DOCKERHUB_CREDINTIALS = credentials('dockerhub')
    }

    stages {
        stage (git clone) {
            steps {
                git ''
            }
        }
    }
}