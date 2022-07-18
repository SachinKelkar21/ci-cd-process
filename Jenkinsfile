node{
	
	stage('Git Checkout'){
      git url: 'https://github.com/SachinKelkar21/ci-cd-process',branch:'main'
  	}
	stage('Mvn Package'){
    	def mvnHome = tool name: 'maven-3', type: 'maven'
    	sh "${mvnHome}/bin/mvn clean package"
  	}
    
}
