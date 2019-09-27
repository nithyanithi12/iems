package com.ideas2it.iems;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.ideas2it.iems")
public class IemsApplication {

	public static void main(String[] args) {
		SpringApplication.run(IemsApplication.class, args);
	}

}
