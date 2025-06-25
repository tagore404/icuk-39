FROM openjdk:8-jre-slim

VOLUME /tmp

ADD target/springboot-application-0.0.1-SNAPSHOT.jar springboot-application.jar

ENTRYPOINT ["java", "-jar", "/springboot-application.jar"]
