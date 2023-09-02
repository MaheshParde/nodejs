pipeline {
    agent any
    tools {
        nodejs "Nodejs"
    }
    environment{
        DOCKERHUB_CREDENTIALS=credentials('docker_credential')
    }
    stages {
        stage('checkout code') {
            steps {
                git 'https://github.com/MaheshParde/nodejs.git'
            }	
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh "npm run build"
            }
        }
	/*stage('Build') {
		steps {
			sh 'npm run ng -- build --prod'
			}
		}*/
	}
	post{
    always{
        cleanWs()
    		}
	}
}

