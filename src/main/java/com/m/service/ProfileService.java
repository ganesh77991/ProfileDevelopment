package com.m.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.m.dao.ProfileDao;
import com.m.model.EducationalDetails;
import com.m.model.PersonalDetails;
import com.m.model.ProfessionalDetails;

@Service
public class ProfileService {
	
	@Autowired
	private ProfileDao dao;
	
	public void savePerson() {
		
		dao.test();
		
	}

	@Transactional
	public void savePerson(PersonalDetails pd) {
		// TODO Auto-generated method stub
		
		dao.savePerson(pd);
	}

	@Transactional
	public void saveEducation(EducationalDetails ed) {
		// TODO Auto-generated method stub
		
		dao.saveEducation(ed);
		
	}
	@Transactional
	public void saveProfession(ProfessionalDetails pfd) {
		// TODO Auto-generated method stub
		
		dao.saveProfession(pfd);
		
	}

	public List<PersonalDetails> getPersonalDetails() {
		// TODO Auto-generated method stub
		
		return dao.getPersonalDetails();
		
	}

	public List<EducationalDetails> getEducationData() {
		// TODO Auto-generated method stub
		return dao.getEducationData();
	}

	public List<ProfessionalDetails> getProfessionalData() {
		// TODO Auto-generated method stub
		return dao.getProfessionalData();
	}

}
