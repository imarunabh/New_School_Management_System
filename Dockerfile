# Use the latest Maven and JDK
FROM maven:latest AS build
WORKDIR /app

# Copy the pom.xml and the src directory
COPY pom.xml ./
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Use the latest OpenJDK to run the application
FROM openjdk:latest
WORKDIR /app
COPY --from=build /app/target/School_Management_System_1-2.7.6.jar ./School_Management_System_1-2.7.6.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "School_Management_System_1-2.7.6.jar"]
