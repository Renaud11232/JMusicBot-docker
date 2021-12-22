FROM openjdk:17-alpine

COPY JMusicBot.jar /

RUN mkdir /data

WORKDIR /data

ENTRYPOINT [ "java", "-Dnogui=true", "-jar", "/JMusicBot.jar" ]