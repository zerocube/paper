FROM ubuntu:20.04

ARG SOURCE_JAR=https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/132/downloads/paper-1.17.1-132.jar

RUN apt update
RUN apt install -y openjdk-16-jre curl

WORKDIR /app
RUN curl \
  -L \
  -o paper.jar \
  "${SOURCE_JAR}"

ENV JAVA_XMX 1G

ENTRYPOINT ["java", "-Xmx${JAVA_XMX}", "-jar", "/app/paper.jar"]
