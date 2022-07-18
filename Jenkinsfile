node{
	
	stage('Git Checkout'){
      git url: 'https://github.com/SachinKelkar21/ci-cd-process',branch:'main'
  	}
	stage('Mvn Package'){
    	def mvnHome = tool name: 'maven-3', type: 'maven'
    	sh "${mvnHome}/bin/mvn clean package"
  	}
  	stage('Build Docker Image'){
    	sh 'docker build -t shlok2014/ci-cd-process:1.0.0 .'
  	}
  	stage('Upload Image to DockerHub'){
    	withCredentials([string(credentialsId: 'docker-hub', variable: 'password')]) {
      		sh "echo Shlok@1110 | docker login -u shlok2014 --password-stdin 	"
    	}
    	sh 'docker push shlok2014/ci-cd-process:1.0.0'
  	}
    
}
