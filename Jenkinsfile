pipeline {
    agent  {
    label 'production'
    }
    stages {
        stage('Build and push image') {
            steps {
                echo 'Starting to build docker image'
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'DockerHub') {
                    docker.remove("trolleye/kali-linux:latest")
                    def customImage = docker.build("trolleye/kali-linux:latest")
                    customImage.push()
                    }
                }
            }
        }
    }
}