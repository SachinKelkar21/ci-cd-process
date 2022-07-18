FROM openjdk:8-jdk-alpine
LABEL maintainer="sachin.kelkar79@gmail.com"
VOLUME /tmp
COPY ./target/ci-cd-process-1.0-SNAPSHOT.jar /usr/src/ci-cd-process/
WORKDIR /usr/src/ci-cd-process
EXPOSE 9090
CMD ["java", "-jar", "ci-cd-process-1.0-SNAPSHOT.jar"]