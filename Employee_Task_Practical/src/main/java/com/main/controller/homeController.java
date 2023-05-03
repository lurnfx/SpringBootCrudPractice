package com.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.model.Employee;
import com.main.service.homeService;

@Controller
public class homeController {
	@Autowired
	homeService ser;
	
    @GetMapping("/")
	public String preLogin() {
		return "index";
	}
    
    @GetMapping("/ragister")
    public String ragesterPage() {
    	return "ragister";
    }
    
	@GetMapping("/save")
    public String saveData(@ModelAttribute Employee emp) {
		ser.saveData(emp);
    	return "index";
    }
    
	@GetMapping("/login")
	public String successPage(@RequestParam int empId, @RequestParam String password, Model m ) {
		if(empId==123&&password.equals("Admin")) {
			Iterable list=ser.getAllData();
	     	m.addAttribute("emp", list);
			return "success";
		}
		else {
			Employee emp = ser.getSingleData(empId, password);
			if(emp!=null) {
				List<Employee> emplist = new ArrayList<>();
				emplist.add(emp);
				m.addAttribute("emp", emplist);
		        return "success";
			}
			return "index";
		}
     	
	}
	
	@GetMapping("/delete")
	public String deleteData(@RequestParam int empId, Model m) {
		ser.deleteData(empId);
		m.addAttribute("emp", ser.getAllData());
		return "success";
	}
	
	
}
