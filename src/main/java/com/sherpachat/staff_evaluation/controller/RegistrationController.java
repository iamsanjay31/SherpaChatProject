
package com.sherpachat.staff_evaluation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sherpachat.staff_evaluation.dao.StaffDao;
import com.sherpachat.staff_evaluation.model.Staff;

@Controller
public class RegistrationController {

	@Autowired
	private StaffDao stdao;

	@RequestMapping(value = "/usersignup", method = RequestMethod.GET)
	public String getLoginForm() {

		return "registration";
	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
	public String getForgotPwForm() {

		return "forgotPassword";
	}

	@RequestMapping(value = "/usersignup", method = RequestMethod.POST)
	public String getSignupForm(@ModelAttribute Staff st) {

		stdao.userSignUp(st);

		return "login";
	}
//==========================================================================fragments===================
	@RequestMapping(value = "/terms&conditions", method = RequestMethod.GET)
	public String getTermsPage() {

		return "fragments/terms";
	}

	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String getConatctPage(HttpSession session) {
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		return "fragments/contact";
	}

	@RequestMapping(value = "/abouts", method = RequestMethod.GET)
	public String getAboutPage(HttpSession session) {
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		return "fragments/about";
	}

}
