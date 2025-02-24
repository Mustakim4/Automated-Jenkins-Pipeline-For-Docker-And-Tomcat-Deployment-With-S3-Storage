pipeline {
    agent any

    tools{
        maven 'maven3'
    }

    stages {
        stage('Fetching Source Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Mustakim4/Automated-Jenkins-Pipeline-For-Docker-And-Tomcat-Deployment-With-S3-Storage.git'
            }
        }

        stage('Build App'){
            steps{
                sh 'mvn clean package'
            }
        }

        stage('Upload Artifact to S3'){
            steps{
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'credential name', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) 
                {
                    s3Upload bucket: 'your bucket name', file: 'artifact', path: 'path inside s3'
                }
            }
        }
    }
}
