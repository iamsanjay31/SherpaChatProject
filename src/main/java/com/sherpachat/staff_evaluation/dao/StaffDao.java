package com.sherpachat.staff_evaluation.dao;

import com.sherpachat.staff_evaluation.model.Staff;

public interface StaffDao {

	void userSignUp(Staff st);

	public boolean staffLogin(String un, String psw);



}
