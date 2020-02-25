package com.m.model;

import java.util.List;

import javax.annotation.Generated;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OrderColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;


@Entity
@Table(name = "Professional")
public class ProfessionalDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer prof_id;
	
	//@NotNull(message = "please enter experience")
	@Range(min=1,max = 60,message = "please enter experience")
	private double totalExp;
	@NotEmpty(message = "please enter company name")
	private String companyName;
	@NotEmpty(message = "please enter designation")
	private String designation;
	@NotEmpty(message = "please enter from date")
	private String fromDate;
	@NotEmpty(message = "please enter to date")
	private String toDate;
	
	@ElementCollection(fetch=FetchType.EAGER)
	@CollectionTable(name="skills",joinColumns=@JoinColumn(name="prof_id"))
	@OrderColumn(name="pos")
	@Column(name = "skill")
	private List<String> skills;

	public Integer getProf_id() {
		return prof_id;
	}

	public void setProf_id(Integer prof_id) {
		this.prof_id = prof_id;
	}

	public double getTotalExp() {
		return totalExp;
	}

	public void setTotalExp(double totalExp) {
		this.totalExp = totalExp;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getFromDate() {
		return fromDate;
	}

	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}

	public String getToDate() {
		return toDate;
	}

	public void setToDate(String toDate) {
		this.toDate = toDate;
	}

	public List<String> getSkills() {
		return skills;
	}

	public void setSkills(List<String> skills) {
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "ProfessionalDetails [prof_id=" + prof_id + ", totalExp=" + totalExp + ", companyName=" + companyName
				+ ", designation=" + designation + ", fromDate=" + fromDate + ", toDate=" + toDate + ", skills="
				+ skills + "]";
	}

	
}
