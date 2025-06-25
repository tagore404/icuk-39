# Use official Maven image with JDK 17
FROM maven:3.9.6-eclipse-temurin-17 as build

# Set working directory in the container
WORKDIR /app

# Copy source code to container
COPY . .

# Build the project and run tests (includes Sonar if configured in pom.xml)
ENV MAVEN_OPTS="-Xmx512m"
RUN mvn clean verify -DforkCount=1 -Dmaven.test.failure.ignore=true
