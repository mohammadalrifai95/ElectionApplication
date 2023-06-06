package com.election.mainapp.homecontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.service.GenericService;
import com.election.mainapp.voting.serviceI.GenericServiceI;

import jakarta.servlet.http.HttpServletRequest;

@RestController
public class HomeRestController {

	
	@Autowired
	GenericServiceI genericService;
	
	public HomeRestController() {
//		genericService = new GenericService();
	}
	
	@RequestMapping(value = "/getData/{id}", method = RequestMethod.GET)
	public UserData getData(@PathVariable int id,  HttpServletRequest request) {
		
		UserData userData = null;
//		userData.setFirstName("George");
//		userData.setEmail("George@yahoo.com");
		
		userData = genericService.findById(id);
		
		return userData;
	}

	
	@RequestMapping(value = "/getData/{id}", method = RequestMethod.POST)
	public UserData postData(@PathVariable int id,  HttpServletRequest request) {
		
		UserData userData = new UserData();
		userData.setFirstName("George");
		userData.setEmail("George@yahoo.com");
		
		
		
		return userData;
	}
	
	
	@RequestMapping(value = "/getData/{id}", method = RequestMethod.PUT)
	public UserData putData(@PathVariable int id,  HttpServletRequest request) {
		
		UserData userData = new UserData();
		userData.setFirstName("George");
		userData.setEmail("George@yahoo.com");
		
		return userData;
	}
	
	
	
}
