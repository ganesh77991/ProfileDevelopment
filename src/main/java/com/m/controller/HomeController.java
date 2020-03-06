package com.m.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.m.model.EducationalDetails;
import com.m.model.PersonalDetails;
import com.m.model.ProfessionalDetails;
import com.m.service.ProfileService;

@Controller
public class HomeController {
	
	@Autowired
	ProfileService service;
	@RequestMapping("/home")
	public String test(ModelMap map) {
	System.out.println("ProfileController.test()");
	map.addAttribute("perDetails", new PersonalDetails() );
	map.addAttribute("educationDetails", new EducationalDetails());
	map.addAttribute("professionalDetails", new ProfessionalDetails());
		return "home";
	}
	
	
	@RequestMapping("/index")
	public String index(ModelMap map) {
		
		System.out.println("from controller");
		
		//map.addAttribute("perDetails", new PersonalDetails() );
		
		
		return "index";
		
	}
	
	@RequestMapping("/")
	public String personalDetails(ModelMap map) {
		
		System.out.println("from controller");
		
		map.addAttribute("perDetails", new PersonalDetails() );
		
		
		return "personalDetails";
		
	}
	
	@RequestMapping(value="/savePerson",method = RequestMethod.POST)
	public String savePerson(@Valid @ModelAttribute("perDetails") PersonalDetails pd,BindingResult bindingResult,ModelMap map) {
		
		
			if (bindingResult.hasErrors()) {
				System.out.println("ProfileController.savePerson() in side if");
				//map.addAttribute("perDetails", new PersonalDetails() );
				//map.addAttribute("educationDetails", new EducationalDetails());
				//map.addAttribute("professionalDetails", new ProfessionalDetails());
				return "personalDetails";
			}
		
		System.out.println(pd);
		System.out.println("ProfileController.savePerson() out side if");
		service.savePerson(pd);
		
		
		return "index";
	}
	
	@RequestMapping(value="/showEducationDetails",method = RequestMethod.GET)
	public String education(ModelMap map) {
		
		map.addAttribute("educationDetails", new EducationalDetails());
			return "educationDetails";
		}
	
	@RequestMapping(value="/saveEducationDetails",method = RequestMethod.POST)
	public String saveEducationDetails(@Valid @ModelAttribute("educationDetails") EducationalDetails ed,BindingResult bindingResult,ModelMap map) {
		
		if (bindingResult.hasErrors()) {
			System.out.println("ProfileController.saveEducationDetails() from if");
			return "educationDetails";
		}
		System.out.println(ed);
		
		service.saveEducation(ed);
		
		map.addAttribute("professionalDetails", new ProfessionalDetails());
		return "index";
	}
	
	@RequestMapping(value="/saveProfessionalDetails",method = RequestMethod.POST)
	public String saveprofessionalDetails(@Valid @ModelAttribute("professionalDetails") ProfessionalDetails pfd,BindingResult bindingResult,ModelMap map) {
		
		if (bindingResult.hasErrors()) {
			System.out.println("ProfileController.saveprofessionalDetails() inside if");
			return "professionalDetails";
		}
		System.out.println(pfd);
		service.saveProfession(pfd);
		
		map.addAttribute("professionalDetails", new ProfessionalDetails());
		return "suc";
	}

}
