# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy pom.xml to the container
COPY pom.xml /app/

# Run Maven command to install dependencies and package the project
RUN apt-get update && apt-get install -y maven
RUN mvn clean package

# Copy the jar file created after building the project
COPY target/email-writer-sb-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the jar file when the container starts
CMD ["java", "-jar", "app.jar"]
