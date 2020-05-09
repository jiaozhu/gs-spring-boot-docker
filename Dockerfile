FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/*.jar
EXPOSE 8080

RUN addgroup -S lab && adduser -S lab -G lab
USER lab:lab

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]