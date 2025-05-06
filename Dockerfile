# --- Stage 1: Build the application ---
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# --- Stage 2: Run the application ---
FROM openjdk:11-jre-slim
WORKDIR /app

# Copy the exact JAR
COPY --from=build /app/target/app-demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]