package com.sherpachat.staff_evaluation.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "tutorialtb")
public class Tutorial {
	
	@Id 
	@GeneratedValue
	private int id;
	private String department;
	private String tutorialtype;
	private String tutorialName;
	private String upload;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getTutorialtype() {
		return tutorialtype;
	}
	public void setTutorialtype(String tutorialtype) {
		this.tutorialtype = tutorialtype;
	}
	public String getTutorialName() {
		return tutorialName;
	}
	public void setTutorialName(String tutorialName) {
		this.tutorialName = tutorialName;
	}
	public String getUpload() {
		return upload;
	}
	public void setUpload(String upload) {
		this.upload = upload;
	}
	
	
	
	
	
	
	

}
