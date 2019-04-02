package com.sherpachat.staff_evaluation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.util.StringUtils;

@Controller
public class AdminHomeController {
	
	@RequestMapping(value="/admindashboard", method= RequestMethod.GET)
	public String getAdminHome(HttpSession session){
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}
		
		return "adminHome";
	}

}
