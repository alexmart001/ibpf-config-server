FROM openjdk:11
VOLUME /tmp
EXPOSE 8888
ADD ./target/ibpf-config-server-0.0.1-SNAPSHOT.jar ibpf-config-server.jar
ENTRYPOINT ["java","-jar","/ibpf-config-server.jar"]