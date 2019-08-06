FROM maven:3.6-jdk-8-alpine
VOLUME /tmp
WORKDIR /src
COPY  . /src
RUN mvn compile
RUN mvn package -DskipTests
# RUN chmod 777 target/
ENTRYPOINT [ "java", "-Dspring.profiles.active=mysql", "-jar", "target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar" ]
