pipeline {
    agent  {
    label 'production'
    }
    stages {
        stage('Build and push image') {
            steps {
                echo 'Starting to build docker image'
                script {
                    docker rmi "trolleye/kali-linux:latest" || echo "kali-linux:latest image does not exist"
                    docker.withRegistry('https://index.docker.io/v1/', 'DockerHub') {
                    def customImage = docker.build("trolleye/kali-linux:latest")
                    customImage.push()
                    }
                }
            }
        }
    }
}