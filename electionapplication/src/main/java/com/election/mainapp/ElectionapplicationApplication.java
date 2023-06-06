package com.election.mainapp;

import java.util.logging.Logger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class ElectionapplicationApplication {

	public static void main(String[] args) {
		SpringApplication.run(ElectionapplicationApplication.class, args);
	}

	
	@Bean
	Logger logger() {
		return 	Logger.getLogger(ElectionapplicationApplication.class.getName());
	} 
	
	
}
