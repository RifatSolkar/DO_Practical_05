# Use a base Java image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy compiled jar file (to be created in pipeline)
COPY target/myapp.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
