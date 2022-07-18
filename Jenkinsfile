node{
	/* instructs the checkout step to clone the specific 
	revision which triggered this Pipeline run */
	echo 'Checking out....'
	checkout scm
	
	docker.image('maven:3.3.3-jdk-8').inside {
	  echo 'Building....'
 	  sh 'mvn -B clean install'
	}
    
}
