build:
	mvn package && mvn clean package

check:
	mvn test	

run:
	java -jar target/ci-cd-process-1.0-SNAPSHOT.jar

docker-build:
	# docker build -t ci-cd-process .
	
docker-pull-run:
	docker run --rm -p 5850:9090 ci-cd-process/springboot-docker-jenkins:jenky
	
clean:
	# Clean build