FROM jenkins/jenkins:lts-jdk11

LABEL maintainer="Sample_Docker"

USER root

RUN apt-get update && apt-get install -y maven

USER jenkins

ENV MAVEN_HOME=/usr/share/maven

ENV PATH=$MAVEN_HOME/bin:$PATH

EXPOSE 8080