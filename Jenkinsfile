pipeline {
    
	  agent any
  tools {nodejs "node"}

	environment{
	registry="mrchelsea"
	registryCredential='dockerhub'
	dockerImage=''
	}
    
	stages{
	stage('Git') {
		steps{
		git 'https://github.com/rahulguptaft9/project_mern_memories'
		}	
	}
		
	stage('Code Coverage'){
		steps{	
			script{
		sh 'npm run test-cov'
		}
		step([$class: 'CoberturaPublisher', coberturaReportFile: 'output/coverage/jest/cobertura-coverage.xml'])	
		}
	}	
		
	
	/*stage('Building image for front end') {
		steps{
			script{
				sh 'docker build -f Dockerfile -t $registry/frontend .'
                		sh 'docker build -f Dockerfile1 -t $registry/backend .'
			}
		}
	}*/
	/*stage('Registring image for front end') {
		steps{
			script{
				docker.withRegistry('',registryCredential){
				dockerImage.push()
				}
			}
		}
	}*/
		
	}
    
}
