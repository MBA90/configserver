FROM openjdk:17-jdk-slim

RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y curl

COPY target/configserver-0.0.1-SNAPSHOT.jar configserver-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","configserver-0.0.1-SNAPSHOT.jar"]