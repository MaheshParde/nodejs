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
		
	stage('Build'){
		steps{
		sh 'npm cache clean -force'
		sh 'npm install /client/package.json'
		sh 'npm install /server/package.json'
		sh 'npm install -g jest'
		}
	}
	
	stage('Building image for front end') {
		steps{
			script{
				sh 'docker build -f Dockerfile -t $registry/frontend .'
                		sh 'docker build -f Dockerfile1 -t $registry/backend .'
			}
		}
	}
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
