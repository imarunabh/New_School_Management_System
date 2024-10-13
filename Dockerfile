# Use the official OpenJDK 21 image from the Docker Hub
FROM openjdk:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the target directory on your local machine to the container's working directory
COPY target/School_Management_System_1-2.7.6.jar /app/School_Management_System_1-2.7.6.jar

# Expose the container's port 8080 to the outside world
EXPOSE 8080

# Specify the command to run your application
ENTRYPOINT ["java", "-jar", "/app/School_Management_System_1-2.7.6.jar"]
