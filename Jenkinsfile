node{
	/* instructs the checkout step to clone the specific 
	revision which triggered this Pipeline run */
	echo 'Checking out....'
	checkout scm
    stage('Build') {
		echo 'Building....'
		sh 'mvn clean package'
	}
	
	stage('Test') {
		echo 'Testing....'
		sh 'mvn test || true'
		junit '**/target/*.xml'
	}
	stage('Deploy') {
		echo 'Deploying....'
	}
}
