pipeline {    
agent any
  tools {nodejs "Nodejs"}
  	stages{
		stage('checkout code') {
		steps{
			git 'https://github.com/MaheshParde/nodejs.git'
			}	
		}
		stage('Install dependencies') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }
		/*stage('Test') {
			steps {
				sh 'npm run test-headless'
				}
			}*/
		stage('Build') {
			steps {
				//sh 'npm run build:ssr'
				//sh 'npm cache clean --force'
				// sh 'npm update'
				// sh 'ng build'
				// sh 'npm build --prod'
				sh 'npm run ng -- build --prod'
				}
			}
		stage('copy'){
			steps{
				//sh 'mv /var/lib/jenkins/workspace/Angular-pipeline/* /var/www/html/'
				sh 'cp -R dist/* /var/www/html'
			}
		}
	}	   
}

