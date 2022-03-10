FROM openjdk:17-ea-11-jdk-slim
ARG JAR_FILE=target/*.jar
VOLUME /tmp
COPY ${JAR_FILE} ConfigServer.jar
ENTRYPOINT ["java","-jar","/ConfigServer.jar"]