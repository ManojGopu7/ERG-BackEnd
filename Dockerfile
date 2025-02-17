# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY target/email-writer-sb-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 7777

# Run the jar file
CMD ["java", "-jar", "app.jar"]
