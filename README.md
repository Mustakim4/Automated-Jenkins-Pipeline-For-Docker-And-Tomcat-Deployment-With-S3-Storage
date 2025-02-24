# Automated-Jenkins-Pipeline-For-Docker-And-Tomcat-Deployment-With-S3-Storage
This project automates the entire software development lifecycle by integrating Jenkins, Docker, AWS, and Tomcat for efficient build, deployment, and artifact storage. The main objective is to streamline the process of building, storing, and deploying applications using a combination of Jenkins pipelines, Docker containers, and AWS S3 storage.


## Setup Server: 

Created a Jenkins server on Ubuntu 22.04 (AWS EC2 t2.medium instance).

## Installed:
Java 17, Maven 3.9.1, Jenkins, and AWS CLI.

Jenkins Plugins: "Pipeline: AWS Steps" plugins to upload artifact to aws s3.