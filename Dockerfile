FROM adoptopenjdk/openjdk11:latest
VOLUME /tmp
EXPOSE 8888
COPY ./target/ibpf-config-server-0.0.3-SNAPSHOT.jar ibpf-config-server.jar
ENTRYPOINT ["java","-jar","/ibpf-config-server.jar"]