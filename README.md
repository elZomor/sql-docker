# sql-docker
Project for spring boot &amp; mySQL &amp; Docker (docker-compose)

# Technologies used in the project
1- Spring Boot
2- Spring Data (JPA)
3- MySQL
4- Docker
# Run the project
- Run the following commands
      mvn clean package -DskipTests
      docker-compose build
      docker-compose up -d
      
# Comments on the project
- The app will be running on the following port (8081) to avoid conflict with default spring boot port (8080)
- the database will be running on the following port (3307) to avoid conflict with default MySQL port (3306)
- The current working endpoints are:
    - http://localhost:8081/persons (GET)
    - http://localhost:8081/persons (POST)
- There is a volume defined for the database to save the data

# Editing the project
- You can change the database variables from the following files:
      - src/main/resources/application.properties
      - db.env
