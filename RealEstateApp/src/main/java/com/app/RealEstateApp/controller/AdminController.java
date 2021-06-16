package com.app.RealEstateApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.RealEstateApp.entity.Admin;
import com.app.RealEstateApp.entity.Estate;
import com.app.RealEstateApp.service.Adminservice;
import com.app.RealEstateApp.service.EstateService;

@Controller
public class AdminController {

	@Autowired
	EstateService estateService;

// ------------------------ADMIN LOGIN PAGE---------------------------
	
	@RequestMapping("/adminlogin")
	public String login() {
		return "adminlogin";
	}
	
	
// ----------------------ADMIN OPERATIONS PAGE-------------------------
	@Autowired
	Adminservice adminService;
	
		@RequestMapping("/verifyadmin")
		public String adminOperations(@ModelAttribute Admin admin) {
			if(adminService.verifyAdmin(admin))
				return "success";
			return "error";
		}
		
		@RequestMapping(value= "/adminhome")
		public String home() {
			return "adminhome";
		}

//------------------------ADDING AN ESTATE-----------------------------

	@RequestMapping("/addestate")
	public String addEstateForm() {
		return "addestate";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveEstate(@ModelAttribute Estate estate) {

		estateService.saveEstate(estate);
		return "saveestate";
	}

//------------------------DELETING AN ESTATE--------------------------

	@RequestMapping("/deleteestate")
	public String deleteEstateForm() {
		return "deleteestate";
	}

	@RequestMapping("/getinfo")
	public String deleteEstate(@RequestParam("estateId") int estateId, Model model) {

		Estate estate = estateService.fetchEstateById(estateId);
		model.addAttribute("estate", estate);
		return "deleteestate";
	}

	@RequestMapping("/delete/{estateid}")
	public String removeTrainee(@PathVariable("estateid") int estateId) {

		estateService.deleteEstate(estateId);

		return "redirect:/adminhome";
	}

//------------------------UPDATING AN ESTATE------------------------------

	@RequestMapping("/updateestate")
	public String updateEstateForm() {
		return "updateestate";
	}

	@RequestMapping("/getestateinfo")
	public String updateEstate(@RequestParam("estateId") int estateId, Model model) {

		Estate estateobj = estateService.fetchEstateById(estateId);
		model.addAttribute("estate", estateobj);
		return "updateestate";
	}

	@RequestMapping(value = "/update/{estateid}", method = RequestMethod.POST)
	public String modifyEstate(@ModelAttribute Estate estate) {

		estateService.modifyEstate(estate);

		return "redirect:/adminhome";
	}

//---------------------SEARCHING ESTATES BY LOCATION----------------------------

	@RequestMapping("/getbylocation")
	public String getbycity() {
		return "getbylocation";
	}
	
	@RequestMapping("/getestatebylocation")
	public String getEstateByLocation(@RequestParam("estateLocation") String estateLocation, Model model) {

		List<Estate> estateobj = estateService.fetchEstateByLocation(estateLocation);
		model.addAttribute("estate", estateobj);
		return "getbylocation";
	}

//-----------------------SEARCHING ALL ESTATES---------------------------------

	@RequestMapping("/getall")
	public String getallestates(Model model) {
		List<Estate> estates = estateService.fetchAllEstates();
		model.addAttribute("estates", estates);		
		
		return "getall";
	}
}
