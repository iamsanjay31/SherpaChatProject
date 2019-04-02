package com.sherpachat.staff_evaluation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sherpachat.staff_evaluation.dao.TutorialDao;

@Controller
public class MailController {
	
	@Autowired
	private TutorialDao tdao;
	
	@RequestMapping(value = "/email", method= RequestMethod.GET)
	public String emailPage(){
		
		return"fragments/contacts";
	}
	
	
	@RequestMapping(value = "/email", method= RequestMethod.POST)
	public String sendmail(){
		
		return"home";
	}


}
