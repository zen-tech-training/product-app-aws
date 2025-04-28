FROM openjdk:17 as build
ADD target/bfsi-user-management-rest-api-mar-2025-0.0.1-SNAPSHOT.jar bfsi-user-management-rest-api-mar-2025.jar
ENTRYPOINT ["java", "-jar", "bfsi-user-management-rest-api-mar-2025.jar"]
EXPOSE 8080
ENV spring.datasource.url=jdbc:mysql://10.127.80.6:3306/bfsi-db?createDatabaseIfNotExist=true
