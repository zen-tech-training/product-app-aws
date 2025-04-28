FROM openjdk:17 as build
ADD target/product-app-aws-0.0.1-SNAPSHOT.jar product-app-aws.jar
ENTRYPOINT ["java", "-jar", "product-app-aws.jar"]
EXPOSE 8080
ENV spring.datasource.url=jdbc:mysql://10.127.80.6:3306/bfsi-db?createDatabaseIfNotExist=true
