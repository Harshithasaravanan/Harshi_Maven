FROM jenkins/jenkins:lts-jdk17

LABEL maintainer="Sample_Docker"

# Switch to root user to install Docker and Maven
USER root

# Update package list, install dependencies, and install Docker and Maven
RUN apt-get update && \
    apt-get install -y \
    maven \
    ca-certificates \
    curl \
    lsb-release \
    gnupg2 \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Install Docker from Docker's official repositories (recommended method)
RUN curl -fsSL https://get.docker.com | bash

# Verify Docker installation
RUN docker --version

# Switch back to Jenkins user
USER jenkins

# Set Maven environment variables
ENV MAVEN_HOME=/usr/share/maven
ENV PATH=$MAVEN_HOME/bin:$PATH

# Expose Jenkins port
EXPOSE 8080

