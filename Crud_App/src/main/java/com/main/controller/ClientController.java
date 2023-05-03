package com.main.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ClientController
{
	
	@GetMapping("")
	public String msg(){
		
	   return "SucessFully Created And Return";
		
	}


}
