package com.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CrudAppApplication {

	public static void main(String[] args) {
		System.out.println("Spring Crud App");
		SpringApplication.run(CrudAppApplication.class, args);
	}

}
