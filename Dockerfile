FROM public.ecr.aws/docker/library/openjdk:17
ADD target/Product-App-AWS-0.0.1-SNAPSHOT.jar Product-App-AWS.jar
ENTRYPOINT ["java", "-jar", "Product-App-AWS.jar"]
EXPOSE 8080
#ENV spring.datasource.url=jdbc:mysql://10.127.80.6:3306/bfsi-db?createDatabaseIfNotExist=true
