FROM amazoncorretto:17-alpine-jdk

LABEL maintainer="Harshi_App"

COPY target/Harshi123-0.0.1-SNAPSHOT.jar Harshi123-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/Harshi123-0.0.1-SNAPSHOT.jar"]