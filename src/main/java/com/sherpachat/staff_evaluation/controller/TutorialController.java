package com.sherpachat.staff_evaluation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sherpachat.staff_evaluation.dao.TutorialDao;
import com.sherpachat.staff_evaluation.model.Tutorial;

@Controller
public class TutorialController {
	
	@Autowired
	private TutorialDao tdao;
	
	@RequestMapping(value="/tutorial", method = RequestMethod.GET)
	public String getTutorialForm(Model model,HttpSession session){
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}
		
		model.addAttribute("emodel", new Tutorial());
		
		return "tutorialForm";
	}  
	
	
	@RequestMapping(value="/tutorial", method = RequestMethod.POST)
	public String saveTutorialForm(@ModelAttribute Tutorial tl, Model model, HttpSession session){
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}
		
		tdao.addTutorial(tl);
		
		model.addAttribute("emodel", new Tutorial());
		return "tutorialForm";
	}
	
	
	@RequestMapping(value="/{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, Model model, HttpSession session){
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}
		
		tdao.deleteTutorial(id);
		
		model.addAttribute("tlist", tdao.getAllTutorial());
		return "tutHome";
	}
	
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, Model model, HttpSession session) {
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

	
		model.addAttribute("emodel", tdao.getById(id));

		return "editTutForm";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute Tutorial tut, Model model, HttpSession session) {
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

	
		tdao.updateTutorial(tut);
		model.addAttribute("tlist", tdao.getAllTutorial() );

		return "tutHome";
	}

	@RequestMapping(value = "/thome", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		model.addAttribute("tlist", tdao.getAllTutorial() );

		return "tutHome";
	}

//============================================================================

	@RequestMapping(value = "/seo", method = RequestMethod.GET)
	public String getSeoTutorial(HttpSession session) {
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		return "seoTutorial";
	}

	@RequestMapping(value = "/seoTest", method = RequestMethod.GET) 
	public String getSeoTestPage(HttpSession session) {
		
		if (StringUtils.isEmpty(session.getAttribute("activeuser"))) {

			return "login";
		}

		return "seoTest";
	}

}
