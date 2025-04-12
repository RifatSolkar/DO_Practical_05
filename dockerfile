# Pull the OpenJDK base image 
FROM openjdk:17-slim 
 
# Set working directory 
WORKDIR /app 
 
# Copy Java file into the container COPY HelloWorld.java . 
 
# Compile the Java file 
RUN javac HelloWorld.java 
 
# Run the Java program 
CMD ["java", "HelloWorld"] 
 
