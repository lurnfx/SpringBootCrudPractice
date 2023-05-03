package com.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.model.User;
import com.main.service.CjcService;

@Controller
public class CjcController {
	@Autowired
	CjcService ser;
    
	@GetMapping(value = "/")
	public String prelogin(Model m) {
		 int randomPin   =(int) (Math.random()*9000)+1000;
		 m.addAttribute("pin", randomPin);
		 System.out.println();
		 return "index";
	}
	

	@GetMapping(value="/login")
	public String login(@RequestParam int otp, @RequestParam int pin, Model m) {
		if(pin==otp) 
		{
			return "ragister";
		}
		else
		{
			System.out.println("Else Part......MSg Displed");
			m.addAttribute("msg", "Enter Correct Otp");
			return "index";
		}
	}
	
	@GetMapping(value="/save")
	public String ragister(@ModelAttribute User u) {
		ser.addData(u);
		return "index";
	}
}
