package com.sherpachat.staff_evaluation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sherpachat.staff_evaluation.dao.StaffDao;
import com.sherpachat.staff_evaluation.model.Staff;

@Controller
public class LoginController {

	@Autowired
	private StaffDao sdao;

	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String getLoginForm() {

		return "login";

	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute Staff st, Model model, HttpSession session) {

		//md5 encoding password
		//st.setPassword(DigestUtils.md5DigestAsHex(st.getPassword().getBytes()));
		
		if(sdao.staffLogin(st.getUsername(), st.getPassword())) {
			
			//session setup
			session.setAttribute("activeuser", st.getUsername());
			session.setMaxInactiveInterval(300);	

			model.addAttribute("user", st.getUsername());
			//model.addAttribute("tlist", sdao.getAllStaff());
			
			return "home";
		}
		model.addAttribute("error", "Username not exist.");
		return "login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {

		
		session.invalidate();

		return "login";

	}
	

}
