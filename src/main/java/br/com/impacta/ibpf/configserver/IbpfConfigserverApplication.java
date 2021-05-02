package br.com.impacta.ibpf.configserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class IbpfConfigserverApplication {

    public static void main(String[] args) {

        SpringApplication.run(IbpfConfigserverApplication.class, args);
    }

}
