FROM openjdk:8-jre-slim

COPY JMusicBot.jar /

RUN mkdir /data

WORKDIR /data

ENTRYPOINT [ "java", "-Dnogui=true", "-jar", "/JMusicBot.jar" ]