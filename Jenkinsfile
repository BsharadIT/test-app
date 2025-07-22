pipeline {
    agent any
    environment {
        IMAGE_NAME = 'my-java-app'
    }
    stages {
        stage('Build Java App') {
            steps {
                sh 'javac src/Hello.java'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t \$IMAGE_NAME .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm \$IMAGE_NAME'
            }
        }
    }
}
