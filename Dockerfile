FROM openjdk:11-jre
RUN mkdir app
ARG JAR_FILE
ADD /target/${JAR_FILE} /app/testdocker-0.0.1-SNAPSHOT.jar
EXPOSE 8084
WORKDIR /app
ENTRYPOINT java -jar testdocker-0.0.1-SNAPSHOT.jar
