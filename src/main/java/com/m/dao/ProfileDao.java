package com.m.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.m.model.EducationalDetails;
import com.m.model.PersonalDetails;
import com.m.model.ProfessionalDetails;

@Repository
public class ProfileDao {
	
	@Autowired
	private HibernateTemplate ht;
	
	public void test() {
		
		System.out.println(ht.getClass().getName());
	}

	public void savePerson(PersonalDetails pd) {
		
		ht.save(pd);
	}

	public void saveEducation(EducationalDetails ed) {
		// TODO Auto-generated method stub
		
		ht.save(ed);
		
	}

	public void saveProfession(ProfessionalDetails pfd) {
		// TODO Auto-generated method stub
		ht.save(pfd);
	}

	public List<PersonalDetails> getPersonalDetails() {
		// TODO Auto-generated method stub
		return ht.loadAll(PersonalDetails.class);
	}

	public List<EducationalDetails> getEducationData() {
		// TODO Auto-generated method stub
		return ht.loadAll(EducationalDetails.class);
	}

	public List<ProfessionalDetails> getProfessionalData() {
		// TODO Auto-generated method stub
		return ht.loadAll(ProfessionalDetails.class);
	}

}
