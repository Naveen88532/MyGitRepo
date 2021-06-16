package com.app.RealEstateApp.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.RealEstateApp.entity.User;
import com.app.RealEstateApp.service.RegisterService;

@Controller
public class UserController {
	
	@Autowired
	RegisterService registerService;
	
// ------------------------REAL ESTATE LAUNCH PAGE-------------------------
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
// ---------------------------USER LOGIN PAGE--------------------------------
	@RequestMapping("/userlogin")
	public String userlogin() {
		
		return "login";
	}
	
// ------------------------USER REGISTRATION PAGE----------------------------
	
	@RequestMapping("/register")
	public String register(Model model) {
		User user = new User();	
		model.addAttribute("user", user);
		return "register";
	}

	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String successfulRegister(@Valid @ModelAttribute("user") User user,BindingResult bindingResult)
	{
		if(bindingResult.hasErrors()) {
			return "register";
		}
        registerService.saveUser(user);
		return "login";
	}
	
// ------------------------SEARCHING ESTATE PAGE---------------------------
	
	@RequestMapping("/search")
	public String searchestates() {
		return "search";
	}
	
// ---------------------------HYDERABAD.JSP---------------------------
	
	@RequestMapping("/hyderabad")
	public String showhyd() {
		return "hyderabad";
	}
	
// ---------------------------CHENNAI.JSP---------------------------	
	
	@RequestMapping("/chennai")
	public String showchn() {
		return "chennai";
	}
	
// ---------------------------MUMBAI.JSP---------------------------
	
	@RequestMapping("/mumbai")
	public String showmumb() {
		return "mumbai";
	}
	
// ---------------------------BANGALORE.JSP---------------------------
	
	@RequestMapping("/bangalore")
	public String showbnglr() {
		return "bangalore";
	}
}
