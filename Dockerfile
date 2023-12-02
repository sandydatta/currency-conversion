FROM maven:3.8.3-openjdk-17 AS BUILD
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package

# Create an Image
FROM mcr.microsoft.com/openjdk/jdk:17-ubuntu
EXPOSE 8100
COPY --from=BUILD /home/app/target/currency-conversion.jar currency-conversion.jar
ENTRYPOINT ["java","-jar", "currency-conversion.jar"]