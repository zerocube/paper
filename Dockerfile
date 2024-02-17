FROM eclipse-temurin:21-jre-jammy

ARG SOURCE_JAR=https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/426/downloads/paper-1.20.4-426.jar

RUN apt update
RUN apt install -y curl

WORKDIR /app
RUN curl \
  -L \
  -o paper.jar \
  "${SOURCE_JAR}"

ENV JAVA_XMX 1G

COPY ./app/ /app/

ENTRYPOINT ["/app/entrypoint.sh"]

RUN /app/entrypoint.sh --version
