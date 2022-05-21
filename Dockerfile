FROM openjdk:11
COPY target/sql-docker-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java","-jar","sql-docker-0.0.1-SNAPSHOT.jar"]


#FROM alpine
#RUN apk update
#RUN apk add maven
#COPY src /home/app/src
#COPY pom.xml /home/app
#WORKDIR /home/app
#RUN mvn clean package -DskipTests
#ENTRYPOINT ["java","-jar","target/sql-docker-0.0.1-SNAPSHOT.jar"]

##
## Build stage
##
#FROM maven:3.6.0-jdk-11-slim AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package
#
##
## Package stage
##
#FROM gcr.io/distroless/java
#COPY --from=build /usr/src/app/target/sql-docker-1.0.0-SNAPSHOT.jar /usr/app/sql-docker-1.0.0-SNAPSHOT.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/usr/app/sql-docker-1.0.0-SNAPSHOT.jar"]