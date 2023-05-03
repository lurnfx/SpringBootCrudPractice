package com.main.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.model.Student;
import com.main.service.HomeService;



@Controller
public class HomeController {
	@Autowired
	HomeService ser;
	
	@GetMapping(value="/")
	public String preLogin() {		
		return "index";
	}
	
	@GetMapping(value="/Register")
	public String register() {
		return "ragister";
	}

	@GetMapping(value="/save")
	public String saveData(@ModelAttribute Student st) {
		ser.saveData(st);
		return "index";
	}
	
   @GetMapping(value="/login")
	public String getData(@RequestParam int user, @RequestParam String pass, Model m){
	      if(user==123&& pass.equals("Admin")) {
	    	Iterable list = ser.getAllData();
	    	m.addAttribute("st", list);
	    	  return "success";
	      }
	      else {
	    	   List<Student>  st = ser.getSingledata(user, pass);
	    	   if(st!=null) {
	    	   m.addAttribute("st", st);
	    	   return "success";
	    	   }else {
	    		   return "index";
	    	   }
	      }
	      
	     
		
	}
   @GetMapping("/delete")
   public String deleteData(@RequestParam int rollno, Model m) {
	   ser.deleteData(rollno);
	   m.addAttribute("st", ser.getAllData());
	   return "success";
   }
   
   @GetMapping("/update")
   public String updateData(@RequestParam("rollNo") int  id, Model m) {
	   System.out.println(id);
	   
	   Student stu =ser.getSingleStudent(id);
	       System.out.println(stu);
		   m.addAttribute("st", stu);
		   return "edit";
	   
	   
   }
   @GetMapping(value="/updateDone")
   public String updateDone(@ModelAttribute Student st, Model m) {
	   ser.saveData(st);
	   m.addAttribute("st", ser.getSingledata(st.getRollNo(), st.getName()));
	   return "success";
   }
   
}