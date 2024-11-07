FROM jenkins/jenkins:lts-jdk17

LABEL maintainer="Sample_Docker"

# Switch to root user to install Docker
USER root

# Update package list and install Maven and Docker dependencies
RUN apt-get update && apt-get install -y maven 

RUN apt-get update && apt-get install -y docker.io

# Switch back to Jenkins user
USER jenkins

# Set Maven environment variables
ENV MAVEN_HOME=/usr/share/maven
ENV PATH=$MAVEN_HOME/bin:$PATH

# Expose Jenkins port
EXPOSE 8080
