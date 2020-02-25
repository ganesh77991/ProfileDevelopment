package com.m.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "Education")
public class EducationalDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer education_id;
	//b.tech/bsc/be/b.com details
	@NotEmpty(message = "please enter college name")
	private String gradCollegeName;
	@NotEmpty(message = "please enter year of Pass")
	private String gradYop;
	//@NotEmpty(message = "please enter percentage")
	@Range(min = 0,max = 100,message = "please enter percentage")
    private String gradPercentage;
	@NotEmpty(message = "please enter address")
    private String gradAddress;
    
    // Intermediate / +2 details
	@NotEmpty(message = "please enter college name")
  	private String plus2CollegeName;
	@NotEmpty(message = "please enter year of pass")
  	private String plus2Yop;
	//@NotEmpty(message = "please enter percentage")
	@Range(min = 0,max = 100,message = "please enter percentage")
    private String plus2Percentage;
	@NotEmpty(message = "please enter address")
    private String plus2Address;
    
    // 10th / SSc details
	@NotEmpty(message = "please enter college name")
  	private String SScCollegeName;
	@NotEmpty(message = "please enter year of pass")
  	private String SScYop;
	//@NotEmpty(message = "please enter percentage")
	@Range(min = 0,max = 100,message = "please enter percentage")
    private String SScPercentage;
	@NotEmpty(message = "please enter address")
    private String SScAddress;
	
	public String getGradCollegeName() {
		return gradCollegeName;
	}
	public void setGradCollegeName(String gradCollegeName) {
		this.gradCollegeName = gradCollegeName;
	}
	public String getGradYop() {
		return gradYop;
	}
	public void setGradYop(String gradYop) {
		this.gradYop = gradYop;
	}
	public String getGradPercentage() {
		return gradPercentage;
	}
	public void setGradPercentage(String gradPercentage) {
		this.gradPercentage = gradPercentage;
	}
	public String getGradAddress() {
		return gradAddress;
	}
	public void setGradAddress(String gradAddress) {
		this.gradAddress = gradAddress;
	}
	public String getPlus2CollegeName() {
		return plus2CollegeName;
	}
	public void setPlus2CollegeName(String plus2CollegeName) {
		this.plus2CollegeName = plus2CollegeName;
	}
	public String getPlus2Yop() {
		return plus2Yop;
	}
	public void setPlus2Yop(String plus2Yop) {
		this.plus2Yop = plus2Yop;
	}
	public String getPlus2Percentage() {
		return plus2Percentage;
	}
	public void setPlus2Percentage(String plus2Percentage) {
		this.plus2Percentage = plus2Percentage;
	}
	public String getPlus2Address() {
		return plus2Address;
	}
	public void setPlus2Address(String plus2Address) {
		this.plus2Address = plus2Address;
	}
	public String getSScCollegeName() {
		return SScCollegeName;
	}
	public void setSScCollegeName(String sScCollegeName) {
		SScCollegeName = sScCollegeName;
	}
	public String getSScYop() {
		return SScYop;
	}
	public void setSScYop(String sScYop) {
		SScYop = sScYop;
	}
	public String getSScPercentage() {
		return SScPercentage;
	}
	public void setSScPercentage(String sScPercentage) {
		SScPercentage = sScPercentage;
	}
	public String getSScAddress() {
		return SScAddress;
	}
	public void setSScAddress(String sScAddress) {
		SScAddress = sScAddress;
	}
	@Override
	public String toString() {
		return "EducationalDetails [gradCollegeName=" + gradCollegeName + ", gradYop=" + gradYop + ", gradPercentage="
				+ gradPercentage + ", gradAddress=" + gradAddress + ", plus2CollegeName=" + plus2CollegeName
				+ ", plus2Yop=" + plus2Yop + ", plus2Percentage=" + plus2Percentage + ", plus2Address=" + plus2Address
				+ ", SScCollegeName=" + SScCollegeName + ", SScYop=" + SScYop + ", SScPercentage=" + SScPercentage
				+ ", SScAddress=" + SScAddress + "]";
	}
    
    
	
	
	
}
