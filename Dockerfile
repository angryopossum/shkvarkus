# Use the official Quarkus base image with GraalVM
FROM quay.io/quarkus/ubi-quarkus-native-image:20.3.1-java11

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application JAR file into the container
COPY target/*-runner /usr/src/app/application

# Expose the port on which the Quarkus application will run
EXPOSE 8080

# Specify the command to run your application
CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]
