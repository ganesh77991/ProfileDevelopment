package com.m.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "PERSONAL")
public class PersonalDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer Per_id;
	@NotEmpty(message = "Please enter firstname")
	private String firstName;
	@NotEmpty(message = "Please enter lastname")
	//@Pattern(regexp = "[0-9]",message = "enter only numbers")
	private String lastName;
	//@NotEmpty(message = "please enter emp number")
	@NotNull(message = "please enter emp number")
	//@Pattern(regexp = "[0-9]")
	private Integer empNo;
	@NotEmpty(message = "please enter date of birth")
	private String dob;
	@NotEmpty(message = "please enter aadhar")
	private String aadhar;
	@Size(min=10,max=10)
	@Pattern(regexp = "(^$|[0-9]{10})")
	private String contact;
	public Integer getPer_id() {
		return Per_id;
	}
	public void setPer_id(Integer per_id) {
		Per_id = per_id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Integer getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Integer empNo) {
		this.empNo = empNo;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "PersonalDetails [Per_id=" + Per_id + ", firstName=" + firstName + ", lastName=" + lastName + ", empNo="
				+ empNo + ", dob=" + dob + ", aadhar=" + aadhar + ", contact=" + contact + "]";
	}
	
	
	
	
}
