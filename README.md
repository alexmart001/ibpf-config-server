# Criando e testando containers Docker

## Criar rede docker para sistema IBPF
```
docker network create ibpf-net
```

## ibpf-config-server - Dockerfile
```
FROM openjdk:11
VOLUME /tmp
EXPOSE 8888
ADD ./target/ibpf-config-server-0.0.1-SNAPSHOT.jar ibpf-config-server.jar
ENTRYPOINT ["java","-jar","/ibpf-config-server.jar"]
``` 
```
mvnw clean package

docker build -t ibpf-config-server:v1 .

docker run -p 8888:8888 --name ibpf-config-server --network ibpf-net -e GITHUB_USER=<USER> -e GITHUB_PASS=<PASSWORD> ibpf-config-server:v1
```
