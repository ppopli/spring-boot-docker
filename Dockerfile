FROM openjdk:8-slim-buster
VOLUME /tmp
ADD target/spring-boot-docker-0.0.2-SNAPSHOT.jar myapp.jar
RUN sh -c 'touch /myapp.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/myapp.jar"]