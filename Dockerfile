# Use the official Maven image as the base image
FROM maven:3.8.1-openjdk-11 AS build

# Set the working directory
WORKDIR /app

# Copy the pom.xml file into the working directory
COPY pom.xml .

# Download dependencies (this will cache them in a separate layer, so they don't have to be downloaded every time the code changes)
RUN mvn dependency:go-offline

# Copy the source code into the working directory
COPY src /app/src

# Build the project
RUN mvn clean package

# Use the official Tomcat image as the base image for the runtime
FROM tomcat:9.0-jdk11

# Remove default webapps from Tomcat to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built war file into the Tomcat webapps directory
#COPY --from=build /app/target/manik-calculator-*.war /usr/local/tomcat/webapps/ROOT.war
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

