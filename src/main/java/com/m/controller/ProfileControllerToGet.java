package com.m.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.m.model.EducationalDetails;
import com.m.model.PersonalDetails;
import com.m.model.ProfessionalDetails;
import com.m.service.ProfileService;

@RestController
@RequestMapping("/profile")
public class ProfileControllerToGet {

	@Autowired
	ProfileService service;
	
	@RequestMapping("/getPersonal")
	public List<PersonalDetails> getData(){
		
		System.out.println("ProfileControllerToGet.getData()");
		
		List<PersonalDetails> pds=service.getPersonalDetails();
		
		System.out.println(pds);
		
		
		return pds;
	}
	
	@RequestMapping("/getEducation")
	public List<EducationalDetails> getEducationData(){
		
		System.out.println("ProfileControllerToGet.getData()");
		
		List<EducationalDetails> eds=service.getEducationData();
		
		System.out.println(eds);
		
		
		return eds;
	}
	
	@RequestMapping("/getProfessional")
	public List<ProfessionalDetails> getProfessionalData(){
		
		System.out.println("ProfileControllerToGet.getData()");
		
		List<ProfessionalDetails> pfds=service.getProfessionalData();
		
		System.out.println(pfds);
		
		
		return pfds;
	}
}
