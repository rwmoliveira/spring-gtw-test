# Use Red Hat Universal Base Image with JDK 17
FROM openjdk:17

# Argument to pass in the JAR_FILE
ARG JAR_FILE=./build-folder/dev-utils-0.0.1-SNAPSHOT.jar

# Copy your JAR file into the image
COPY ${JAR_FILE} /deployments/

# Set the default command to execute
# when creating a new container
CMD ["java", "-jar", "/deployments/"]
#RUN ls /tmp/build/inputs/
