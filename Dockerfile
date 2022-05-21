FROM openjdk:11
COPY target/sql-docker-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java","-jar","sql-docker-0.0.1-SNAPSHOT.jar"]