package com.election.mainapp.homecontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.election.mainapp.constant.GlobalConstant;
import com.election.mainapp.generic.StringUtility;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class NominationController {

	public NominationController() {

	}
	
	
	
	
	@GetMapping(value = "/candidacyconditions")
	public ModelAndView  redirectToCandidacyConditions() {
		
		ModelAndView  mv = new ModelAndView();
		
		mv.setViewName("candidacyconditions");

		
		return mv ; 
	}
	
	
	
	

	
	

}
