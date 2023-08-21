package com.election.mainapp.homecontroller;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.*;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Scanner;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.client.RestTemplate;


import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GenericDateAndTimeData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.RegionData;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.service.VoterService;
import com.election.mainapp.voting.serviceI.GenericServiceI;
import com.election.mainapp.voting.serviceI.VoterServiceI;

//import ch.qos.logback.classic.Logger;
import java.util.logging.Logger;

import jakarta.annotation.security.RolesAllowed;
import jakarta.mail.Session;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
//import jakarta.ws.rs.HttpMethod;

import com.election.mainapp.constant.GlobalConstant;
import com.election.mainapp.constant.GlobalMessage_AR;
import com.election.mainapp.generic.StringUtility;
import com.election.mainapp.generic.interfaces.FooExtendedI;
import com.election.mainapp.voting.data.AreaData;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import com.aspose.ocr.AsposeOCR;
import com.aspose.ocr.License;


@Controller
//@EnableWebMvc
public class HomeController {

	@Autowired
	Logger logger; //= Logger.getLogger(HomeController.class.getName());
	
	@Autowired
	GenericServiceI genericService;
	
	@Autowired
	VoterServiceI voterService;
	
	@Autowired
	UserDetailsService userDetailsServiceImpl ;
//	UserDetailsServiceImpl userDetailsServiceImpl ;
	
	 
	//@PreAuthorize("hasAuthority('ROLE_ADMIN')") 
	//@RequestMapping(value = "/", method = RequestMethod.GET)
	//@RequestMapping(value = "/login", method = RequestMethod.GET)  
	//@ResponseBody
//	@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")
	@GetMapping(value = "/") 
//	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String login(HttpServletRequest request) {
		
//		getAuthority(); 
		
		
//		  populateListOfCountry(request);
//		  String selectedLanguageJsp = returnLanguageSelected(request);
			
//		return selectedLanguageJsp;
//		return "login";   
		return "home";     
//		return "busenisshome";   
	}
	
	 
	@GetMapping(value = "/logoutPage")   
	public String logoutPage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		invalidateSession(session);
 
		return "login";  
	}


	private void invalidateSession(HttpSession session) {
		session.invalidate();
	}
	
	
	
//	@ResponseBody 
	//@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")
	@GetMapping (value = "/login")  
	//public ModelAndView login(@RequestParam("userName")  String userName, @RequestParam("password") String password , HttpServletRequest request,  String ... alredyLoggedin) {
		public ModelAndView login(UserData usrdta, HttpServletRequest request,  String ... alredyLoggedin) {
		
		logger.info("Inside login ...by logger"); 
		HttpSession session = request.getSession();
	     if(StringUtility.isNotEmpty((String)request.getParameter("alredyLoggedin")) || 
	    		(alredyLoggedin != null && StringUtility.isNotEmpty(alredyLoggedin[0]) 
	    		&& alredyLoggedin[0].equals("Yes"))) {
	    	 
	    	 usrdta.setUserName((String)session.getAttribute("userName") );
	    	 usrdta.setPassword((String)session.getAttribute("password"));
	     }

	     ModelAndView mv= new ModelAndView();
	     //HttpSession session = request.getSession();
	     
	     String language_selected = GlobalConstant.EMPTY_STRING[0]; 
	     if(session != null && session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER) != null)
	     language_selected = (String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);
	     
//			if(StringUtility.isNotEmpty(language)) {
//				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, language);				
//			}else {
//				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, GlobalConstant.LAUNGAUE_ENGLISH);
//			}
			mv.addObject(GlobalConstant.LAUNGAUE_SMALL_LETTER, language_selected);
			//String returnPage = "login";
			String returnPage = "home";
//			if(language_selected.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {	
//				returnPage="login";
//			}else{
//				returnPage="login";
//				//returnPage="login_arabic"; 
//			}
//	     
			//lambdaExpressionTest();
		
		UserData userData = null;
		if(alredyLoggedin == null) {
		//mv.addObject("errorLoginMessage", "");
		
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			//Username and password left empty
			//session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);
			mv.setViewName(returnPage);
			if(language_selected.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
				mv.addObject("errorLoginMessage", "Please enter Username and Password");
			}else{
				mv.addObject("errorLoginMessage", GlobalMessage_AR.EMPTY_USER_PASS_MESSAGE_AR);
			}
			
			//getAuthority();
			if(usrdta!=null) {
				assignRoleToModelAndView(mv, usrdta.getRole());
				session.setAttribute("role", usrdta.getRole());
			}

			return mv;
		}
		
		
		userData = genericService.findUser(usrdta);
		if(userData == null ) {
			//Incorrect user and pass entered
			mv.setViewName(returnPage);
			if(language_selected.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
				mv.addObject("errorLoginMessage", "Username or password is incorrect, Please enter valid username and password");
			}else{
				mv.addObject("errorLoginMessage", GlobalMessage_AR.WRONG_USER_PASS_MESSAGE_AR);
			}
			
		}
		else {
			session.setAttribute("userName", userData.getUserName());
			session.setAttribute("password", userData.getPassword());
			
			populateListOfCountry(request);
			populateListOfCity(mv, request);
			
			//mv.setViewName("home2");
			mv.setViewName("home");
		}
		
		}else {
			System.out.println(session.getAttribute("userName"));
			populateListOfCountry(request);
			populateListOfCity(mv, request);
			mv.setViewName("home2");
		}
		
		if(userData==null) {
			userData = (UserData) session.getAttribute("userData");
		}
		if(session != null) {
			session.setAttribute("userData" , userData);
		}
		
		
		if(userData!=null) {
			assignRoleToModelAndView(mv, userData.getRole());
			session.setAttribute("role", userData.getRole()); 
		}
		
		return mv;
	}


	private void assignRoleToModelAndView(ModelAndView mv, String role ) {
			//consumeRestAPIUsingRestTemplateTest(userData);  			
				mv.addObject("role", role); 
				
	}
	
	@GetMapping (value = "/callBusinessApp")
	public ModelAndView callBusinessApp(HttpServletRequest request){
		
		ModelAndView mv = new ModelAndView(); 
		HttpSession session = request.getSession(); 
		UserData userData = (UserData) session.getAttribute("userData");

		  //Call(consume) REST API
		  String uri = "http://localhost:8081//getData/"+userData.getId();  
		  RestTemplate restTemplate = new RestTemplate();
		  
		  String businessApp = restTemplate.getForObject(uri, String.class);
		  
		  
		  session.setAttribute("businessApp", businessApp);
		  
//		  UserData ud = restTemplate.postForObject(uri, usrdta, UserData.class);
//		  UserData ud  = restTemplate.exchange(uri, HttpMethod.PUT, usrdta, UserData.class, 1);
		  
		  if(userData !=null)
		  assignRoleToModelAndView(mv, userData.getRole());
		  session.setAttribute("role", userData.getRole()); 
		  
		  
		  mv.setViewName("home2"); 
		  
		  populateListOfCountry(request);
		  populateListOfCity(mv, request);
		  
		  return mv; 
		
	}
	
	
	
//	@ResponseBody   
//	@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		
		//getAuthority();
		
		//populateListOfCountry(request);
		
		return "home2";
	}
	
//	@RolesAllowed("ROLE_ADMIN")
//	@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")
//	@ResponseBody   
	@PreAuthorize("hasAuthority('ROLE_ADMIN') ")    
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(HttpServletRequest request) {

		//Use spring security for admin page 
		//if(!isSessionValid(request, mv)) {
			//return mv;
		//}
			
		return "admin";
	}
	
	
//	@RolesAllowed("ROLE_ADMIN")
//	@ResponseBody 
//	@PreAuthorize("hasAuthority('ROLE_USER') ")
	@PreAuthorize("hasAuthority('ROLE_ADMIN') ") 
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String getUser(HttpServletRequest request) {
		
		//getAuthority();
		//populateListOfCountry(request);
		//String selectedLanguageJsp = returnLanguageSelected(request);
		
		return "user";
	}	
	
	
	
	
	@RequestMapping(value = "/languageChanged", method = RequestMethod.GET)
	public String languageChanged(String selectedLanguage, HttpServletRequest request) {
		
		populateListOfCountry(request);

	     HttpSession session = request.getSession();
			if(StringUtility.isNotEmpty(selectedLanguage)) {
				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, selectedLanguage);				
			}else {
				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, GlobalConstant.LAUNGAUE_ENGLISH);
			}
			//mv.addObject(GlobalConstant.LAUNGAUE_SMALL_LETTER, session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER));

		if(StringUtility.isNotEmpty(selectedLanguage) && selectedLanguage.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
			return "login";				
		}else {
			return "login_arabic";				
		}
		
	}


	


	private String returnLanguageSelected(HttpServletRequest request) {
		logger.info("................inside returnLanguageSelected....................");
		HttpSession session = request.getSession();
		if(session != null ) {
			String language = (String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);			
		
			if(language != null && language.equals(GlobalConstant.LAUNGAUE_ARABIC)) {
				return "login_arabic";				
			}else {
				return "login";				
			}
		}
		return "login";
	}
	




	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public ModelAndView contactUs( HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		
		getListOfCandidateWithPagination(request, mv);
		
		return mv;
	}


	private boolean isSessionValid(HttpServletRequest request, ModelAndView mv) {
		
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName"); 
		if(session == null || StringUtility.isEmpty(userName) ) { 

			mv.setViewName("login");
			mv.addObject("errorLoginMessage", "You can not navigate to this screen, please login with your credential first");
			
			return false;
		}
		

		
		return true;
	}





	private void getListOfCandidateWithPagination(HttpServletRequest request, ModelAndView mv) {
		String spageid=request.getParameter("page");
		int pageid = 0, total = 0;
		
		if(spageid !=null) {
		pageid=Integer.parseInt(spageid);
		total=5;  
		if(pageid==1){}  
		else{  
		    pageid=pageid-1;  
		    pageid=pageid*total+1;  
		}  
		}
	
		//Optional<CandidateData> candidateData = genericService.findaCandidateData(pageid, total, 1);
		List<CandidateData>  candidateDataList = genericService.findAll(pageid, total);
		
		
		
		mv.addObject("candidateDataList", candidateDataList);
		mv.setViewName("contactus");
	}
	
	
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public String home2( HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String userName = (String)session.getAttribute("userName");
		String password= (String)session.getAttribute("password");
		
		System.out.println("userName = " +userName + "  password = "+ password);
		
		
		return "home2";
	}
	
	
	
	private void printThing(FooExtendedI mfI) {
		System.out.println("printThing called **");
		mfI.print();
	}
	

	
 
	
	
	
	//@RolesAllowed("ROLE_USER")
	//@ResponseBody
//	@PreAuthorize("hasAuthority('ROLE_USER') ") 
//	@RequestMapping(value = "/user", method = RequestMethod.GET)
//	public String user(HttpServletRequest request) {
//		
//		//getAuthority();
//		
//		//populateListOfCountry(request);
//		//String selectedLanguageJsp = returnLanguageSelected(request);
//
//		return "user";	
//	}
	

	
	@RequestMapping(value = "/findAllConstituencyByGovId", method = RequestMethod.GET)
	public ModelAndView findAllConstituencyByGovId(Long governorateId, HttpServletRequest request){
		ModelAndView mv= new ModelAndView();
		
		populateListOfCountry(request);
		populateListOfCity(mv, request, governorateId );
		populateListOfConstituencyByGovId(governorateId, mv, request); 
		
		mv.setViewName("home2");
		
		
		HttpSession session = request.getSession();
		String role= (String) session.getAttribute("role");
		assignRoleToModelAndView(mv, role);
		
		return mv;
	}
	
	
	
	@RequestMapping(value = "/findAllConstituencyByGovId2", method = RequestMethod.GET)
	public ModelAndView findAllConstituencyByGovId2(Long governorateId, HttpServletRequest request){
		ModelAndView mv= new ModelAndView();
		
		populateListOfCountry(request);
		populateListOfCity(mv, request, governorateId );
		populateListOfConstituencyByGovId(governorateId, mv, request);
		
		mv.setViewName("voterRegistration");
//		CityLable
		
		HttpSession session = request.getSession();
		String role= (String) session.getAttribute("role");
		assignRoleToModelAndView(mv, role);
		
		return mv;
	}
	
	




	private void populateListOfConstituencyByGovId(Long governorateId, ModelAndView mv, HttpServletRequest request) {
		
		List<ConstituencyData>  constituencyDataList= genericService.findListOfConstituencyByGovId(governorateId);
		mv.addObject("constituencyDataList", constituencyDataList);
		
		HttpSession session = request.getSession();
		session.setAttribute("constituencyDataList", constituencyDataList);
		
	}


	private void populateListOfCity(ModelAndView mv, HttpServletRequest request, Long ... governorateId) { 
		
		//ArrayList<String> listArea = new ArrayList<>();
		List<GovernorateData>  governorateDataList = genericService.findAllGovernorateDataList();
		
		String selectedGovernorate = null;
		if(governorateId!=null && governorateId.length>0 && governorateId[0] != null) {   
			for (Iterator iterator = governorateDataList.iterator(); iterator.hasNext();) {
				GovernorateData governorateData = (GovernorateData) iterator.next();
				if(governorateData.getId()==governorateId[0]) {
					governorateData.setSelectedItem(GlobalConstant.TRUE_FIRST_CAPITAL);
					selectedGovernorate = governorateData.getName(); 
				}
			}
		}
		
		if(selectedGovernorate !=null) {
			mv.addObject("CityLable", "City"); 
			mv.addObject("selectedGovernorate", selectedGovernorate);
		}
		
		mv.addObject("governorateDataList", governorateDataList);
		HttpSession session = request.getSession();
		session.setAttribute("governorateDataList", governorateDataList);
		
	}

	
	private void populateListOfCountry(HttpServletRequest request) {
	
		String[] countryCodes = Locale.getISOCountries();
        Map<String, String> mapCountries = new TreeMap<>();
   	 
        for (String countryCode : countryCodes) {
            Locale locale = new Locale("", countryCode);
            String code = locale.getCountry();
            String name = locale.getDisplayCountry();
            mapCountries.put(code, name);
        }
 
        request.setAttribute("mapCountries", mapCountries);        
        
	}




	private void consumeRestAPIUsingRestTemplateTest(UserData userData) {

		
		  //Call(consume) REST API
		  String uri = "http://localhost:8080//getData/"+userData.getId();
		  RestTemplate restTemplate = new RestTemplate();
		  
		  UserData ud = restTemplate.getForObject(uri, UserData.class);
//		  UserData ud = restTemplate.postForObject(uri, usrdta, UserData.class);
//		  UserData ud  = restTemplate.exchange(uri, HttpMethod.PUT, usrdta, UserData.class, 1);

		  
		  if(ud!=null) {
			  System.out.println("User FirstName: " + ud.getFirstName());
			  System.out.println("User Email: " + ud.getEmail());
		  }
		
	}





	private void lambdaExpressionTest() {

		//used of lambda expression
		 List<String> list = Arrays.asList("jai", "adithya", "raja");
	      list.stream().map( s -> s +  " - " + s.toUpperCase()).forEach(s -> System.out.println(s));
		
		//used of lambda expression
	      FooExtendedI mfI = () -> {
			System.out.println("Hello ");
			System.out.println("Before 1/0");
			System.out.println("Before 1/0");
			System.out.println("Before 1/0");
//			System.out.println(1/0);
//			System.out.println("After 1/0");
		};
//		printThing(mfI);
		mfI.print();
		
		
		
	}





	@RequestMapping("/userRegistration")
	@ResponseBody
	public List<String> userRegistration(UserData usrdta, HttpServletRequest request) {


		List<String> messageList = new ArrayList<String>();
		
		HttpSession session = request.getSession();
		String language = "";
		if(session != null && StringUtility.isNoneEmpty((String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER))){
			language =  (String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);	
		}

		
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			messageList.add("Failed_Registration");
			
			if(language.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
				messageList.add("Please fill all below required fields to complete registration.");				
			}else {
				messageList.add(GlobalMessage_AR.INCOMPLETE_REGISTRATION_MESSAGE_AR);				
			}
			
			return messageList;
		}
		
		
		genericService.saveUser(usrdta);
		
		messageList.add(usrdta.getUserName());
		messageList.add(usrdta.getPassword());
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		
		return messageList;
	}
	
	
	
	@RequestMapping("/welcome")
	public ModelAndView welcome(Map<String, Object> model) {
		ModelAndView mv = new ModelAndView();

		ArrayList<String> listArea = new ArrayList<>();

//		        list.add("Baseball");
//		        list.add("Basketball");
//		        list.add("Cricket");
		
		listArea.add("Capital Department");
		listArea.add("Bani Obaid Department");
		listArea.add("Al-Mazar Al-Shamali Department");
		listArea.add("Ar Ramtha Department");
		listArea.add("Bani Kinanah Department");
		listArea.add("Kourah Department");
		listArea.add("Al-Aghwar Al Shamaliyyeh");
		listArea.add("Taybeh Department");
		listArea.add("Wasatieh Department");

		mv.addObject("listArea", listArea);
		

		
		
		ArrayList<AreaData> listAreaData = new ArrayList<>();
		AreaData areaData = null;
		int irbidDepartId = 1;
		String areaDesc = "";
		for (Iterator iterator = listArea.iterator(); iterator.hasNext();) {
			
			areaData = new AreaData();
			
			areaDesc = (String) iterator.next();
			
			areaData.setId(irbidDepartId);
			areaData.setName(areaDesc.replaceAll("\\s", "").replaceAll("\\-", ""));
			areaData.setDescription(areaDesc);
			listAreaData.add(areaData);
			
			
			System.out.println(areaData.getId());
			System.out.println(areaData.getName());
			System.out.println(areaData.getDescription());
			System.out.println();
			
			
			irbidDepartId++ ;			
		}
		

		mv.addObject("listAreaData", listAreaData);
		
		mv.setViewName("home2");

		return mv;
	}
	
	
	
	@RequestMapping("/home3")
	public ModelAndView getCandidateByAre( ) {
		
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<String> listArea = new ArrayList<>();

		
		listArea.add("Capital Department");
		listArea.add("Bani Obaid Department");
		listArea.add("Al-Mazar Al-Shamali Department");
		listArea.add("Ar Ramtha Department");
		listArea.add("Bani Kinanah Department");
		listArea.add("Kourah Department");
		listArea.add("Al-Aghwar Al Shamaliyyeh");
		listArea.add("Taybeh Department");
		listArea.add("Wasatieh Department");
		
		mv.addObject("listArea", listArea);
		
		
		
		
		ArrayList<AreaData> listAreaData = new ArrayList<>();
		AreaData areaData = null;
		int irbidDepartId = 1;
		String areaDesc = "";
		for (Iterator iterator = listArea.iterator(); iterator.hasNext();) {
			
			areaData = new AreaData();
			
			areaDesc = (String) iterator.next();
			
			areaData.setId(irbidDepartId);
			areaData.setName(areaDesc.replaceAll("\\s", "").replaceAll("\\-", ""));
			areaData.setDescription(areaDesc);
			listAreaData.add(areaData);
			
			
			System.out.println(areaData.getId());
			System.out.println(areaData.getName());
			System.out.println(areaData.getDescription());
			System.out.println();
			
			
			irbidDepartId++ ;			
		}
		
		
		mv.addObject("listAreaData", listAreaData);
		
		mv.setViewName("home3");
		
		return mv;
	}
	
	
	@RequestMapping("/getCandidateByAre")
	@ResponseBody
	public String getCandidateByAreaId(@RequestParam int areId) {
		
		
		System.out.println("Alrifai Alrifai");
		
		return "Message from server"; 
	}
	
	
	@RequestMapping("/getCandidateByAreaId")
	public ModelAndView getCandidateByAre(@RequestParam int areId, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		List<String> candidatewithvoterList = populateListAsString(areId);
		
		StringBuffer sb = new StringBuffer();
		for (Iterator iterator = candidatewithvoterList.iterator(); iterator.hasNext();) {
			String string = (String) iterator.next();
	        sb.append(" "+string+ "<br>");
		}
		
		 String message = sb.toString();
		 //System.out.println(message);
		
			mv.addObject("candidatewithvoterList", candidatewithvoterList);
			mv.setViewName("candidate");
		
		return mv;
	}
	
	
	
	private List<String> populateListAsString(int areId) {
		
		System.out.println("Are id = "+ areId);
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<String> candidateList = null;
		
		
		if(areId==1) {
			candidateList = new ArrayList<>();
			candidateList.add("Ali Alrifai");
			candidateList.add("Mohammad Alrifai");
			candidateList.add("Abdullah Alrifai");
			candidateList.add("Ibrahim  Alrifai");
			candidateList.add("Omar Alrifai");
		}
		
		if(areId==2) {
			candidateList = new ArrayList<>();
			candidateList.add("Ayda Alrifai");
			candidateList.add("Esra Alrifai");
			candidateList.add("Thikra Alrifai");
			
		}
		
		if(areId==3) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		
		if(areId==4) {
			candidateList = new ArrayList<>();
			candidateList.add("Azzam Obeidat");
			candidateList.add("Mohammad  Obeidat");
			candidateList.add("Ibrahim Obeidat");
		}
		
		if(areId==5) {
			candidateList = new ArrayList<>();
			candidateList.add("Haifa Obeidat");
			candidateList.add("Amneh  Obeidat");
		}
		
		if(areId==6) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		
		if(areId==7) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		if(areId==8) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		if(areId==9) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		
		return candidateList;
	}
	
	
	
	
	@RequestMapping(value = "/getCandidateAndVoters", method = RequestMethod.GET)
	public String getCandidateAndVoters() {
		
		Map <CandidateData, VoterData> CandidateAndVoters = new HashMap<CandidateData, VoterData>();
		
		
		return "login";
	}
	
	
	
	
	
	@RequestMapping("/addCandidateFromContactusScreen")
	@ResponseBody
	public List<String> addCandidateFromContactusScreen(CandidateData candidateData, HttpServletRequest request) {


		List<String> messageList = new ArrayList<String>();
		
		if(!isSessionValid(request, new ModelAndView())) {
			
			messageList.add("Failed_Registration");
			messageList.add("Please redirect to login page and use your credintail");
			
			return messageList;
		}
		
		if(StringUtility.isEmpty(candidateData.getFirstName()) 
				|| StringUtility.isEmpty(candidateData.getLastName())
				|| StringUtility.isEmpty(candidateData.getMobile())
				|| StringUtility.isEmpty(candidateData.getEmail())
				|| StringUtility.isEmpty(candidateData.getSsn())
				|| StringUtility.isEmpty(candidateData.getLocation())
						 ) {
			messageList.add("Failed_Registration");
			messageList.add("Please fill all below required fileds in order to add new candidate");
			return messageList;
		}
		
		genericService.saveCandidate(candidateData);
		
//		messageList.add(usrdta.getUserName());
//		messageList.add(usrdta.getPassword());
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		
		//getListOfCandidateWithPagination(request, new ModelAndView());
		
		return messageList;
	}
	@RequestMapping("/addvoter") 
	@ResponseBody
	public List<String> addCandidateFromContactusScreen2(VoterData voterData,HttpServletRequest request) { 

		List<String> messageList = new ArrayList<String>();
		
		if(
				StringUtility.isEmpty(voterData.getFullName())
//				|| voterData.getGovernorateData()!=null
//				|| voterData.getConstituencyData()!=null
//				|| voterData.getRegionData()!=null
				
//				StringUtility.isEmpty(voterData.getFirstName()) 
//				|| StringUtility.isEmpty(voterData.getLastName())
				//|| StringUtility.isEmpty(candidateData.getMobile())
				//|| StringUtility.isEmpty(candidateData.getEmail())
				//|| StringUtility.isEmpty(candidateData.getSsn())
				//|| StringUtility.isEmpty(candidateData.getLocation())
//				|| StringUtility.isEmpty(candidateData.getUserName())
//				|| StringUtility.isEmpty(candidateData.getPassword()
				
				) {
			messageList.add("Failed_Registration");
			messageList.add("Please fill all below required fileds in order to add new candidate");
			return messageList;
		}
		
		String fullName = voterData.getFullName();
		messageList = enterNewName(fullName); 
		
		if(messageList.get(0).equals("Failed_Registration")) {
			return messageList;
		}
		
		
//		below 2 lines moved to method(voterRegisterWithCredential)
//		UserData userData = new UserData();
//		genericService.saveCandidate(candidateData);
		HttpSession session = request.getSession();
		session.setAttribute("voterData", voterData);
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		
		setDetailsTovoter(voterData, request);
		
		
		//genericService.saveCandidate(cndidtDta);
		voterService.saveVoter(voterData);
		
		
		return messageList;
	}
	
	
	private void setDetailsTovoter(VoterData voterData, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		List<GovernorateData>  governorateDataList = (ArrayList<GovernorateData> )session.getAttribute("governorateDataList");		
				governorateDataList.forEach(gData -> {
			            if (gData.getId().intValue()==voterData.getGovernorateId().intValue()) {
			            	voterData.setGovernorateData(gData);
			            }
			        }
				);
		
		List<ConstituencyData>  constituencyDataList = (ArrayList<ConstituencyData> )session.getAttribute("constituencyDataList"); 
		constituencyDataList.forEach(cData -> {
			System.out.println(cData.getId() + "   " +voterData.getConstituencyId());
			System.out.println(cData.getId()==voterData.getConstituencyId()); 
                    if (cData.getId().intValue()==voterData.getConstituencyId().intValue()) {
                    	voterData.setConstituencyData(cData);
                    }
                }
        );
		
		
		//voterData.setRegionData(new RegionData());
		
		UserData userData = new UserData();
		userData.setUserName(voterData.getUserName());
		userData.setPassword(voterData.getPassword());
		
		//userData.setGenericDateAndTimeData(new GenericDateAndTimeData());  
		userData.getGenericDateAndTimeData().setCreatedBy(voterData.getUserName());
		//userData.getGenericDateAndTimeData().setCreatedTs(new Date());
		userData.getGenericDateAndTimeData().setUpdatedBy(voterData.getUserName());
		userData.getGenericDateAndTimeData().setUpdatedTs(new Date());
		
		voterData.setUData(userData);
		userData.setVData(voterData);     
		
//		voterData.setGenericDateAndTimeData(new GenericDateAndTimeData());
		voterData.getGenericDateAndTimeData().setCreatedBy(voterData.getUserName());
//		voterData.getGenericDateAndTimeData().setCreatedTs(new Date());
		voterData.getGenericDateAndTimeData().setUpdatedBy(voterData.getUserName());
//		voterData.getGenericDateAndTimeData().setUpdatedTs(new Date());
		
	}


	@RequestMapping("/voterregisterwithcredential") 
	public ModelAndView voterRegisterWithCredential(VoterData voterData, HttpServletRequest request) {
	
		ModelAndView  mv = new ModelAndView();

		
		HttpSession session = request.getSession();
		if(session!=null && session.getAttribute("candidateData")!=null) {
			CandidateData candidateData = (CandidateData) session.getAttribute("candidateData") ;			
		}
		voterData = (VoterData) session.getAttribute("voterData") ;
		UserData userData = new UserData();
//		genericService.saveCandidate(cndidtDta);
		
		mv.setViewName("voterregisterwithcredential");
		
		return mv;
	}
	
	
	@GetMapping(value = "/candidateinformation")
	public ModelAndView  redirectToCandidateInformation(HttpServletRequest request, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		
		
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		
		mv.setViewName("candidateinformation");
		
		return mv ; 
	}
	
	
	
	@GetMapping(value = "/previousPage") 
	public ModelAndView  previousPage(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {	
			return mv;
		}
		
		
		HttpSession session = request.getSession();
		
		
		String previousPage = null;// Default value of String is null
		
		if( session != null ) {
			previousPage = (String)session.getAttribute(GlobalConstant.PREVIOUS_PAGE);			
		}
		
		if(StringUtility.isNotEmpty(previousPage)) {
			
			mv.setViewName(previousPage);
			
		}else {
			mv.setViewName("/");  
		}
		
		return mv ;
	}
	
	
	
	@GetMapping(value = "/news") 
	public ModelAndView  news(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		mv.setViewName("news");  
		
		return mv ;
	}
 
	
	
	@GetMapping(value = "/candidacyconditions")
	public ModelAndView  redirectToCandidacyConditions(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		
		mv.setViewName("candidacyconditions");
		
		return mv ; 
	}
 
	
	

	private void getAuthority() {
		Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();

		for (Iterator iterator = authorities.iterator(); iterator.hasNext();) {
			SimpleGrantedAuthority simpleGrantedAuthority = (SimpleGrantedAuthority) iterator.next();
			System.out.println(simpleGrantedAuthority.getAuthority());  
//			if(StringUtility.isNotBlank(simpleGrantedAuthority.getAuthority()) ) {
//				simpleGrantedAuthority = new SimpleGrantedAuthority("ROLE_USER");
//			}
//			System.out.println(simpleGrantedAuthority.getAuthority());  
		}
	}
	
	
	
	
	@RequestMapping("/voterRegistration")
	public ModelAndView voterRegistration(Map<String, Object> model, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("voterRegistration");
		
		populateListOfCity(mv, request);
		
		return mv;
	}
	
	
	private List<String> enterNewName(String fullName) { 
//		Scanner input = new Scanner(System.in);
		//System.out.println("Enter your full name as it appears in you id");
		//String userName = input.nextLine();
		
		List<String> messageList = new ArrayList<String>();
		messageList = checkIfEnteredNameAlreadyRegistedIn2020(fullName);
		
		return messageList;
	}
	
	private static List<String> checkIfEnteredNameAlreadyRegistedIn2020(String enteredName) {
		
		ArrayList<String> ammanVoterNames2020List = new ArrayList<String>();
		List<String> messageList = new ArrayList<String>();
		
		BufferedReader bufReader = null;
		try {
			FileReader fileReader=new FileReader("2020_Amman_1_FirstElectoralDistrict.txt");  
			//FileReader fileReader=new FileReader("2020_Amman_ThirdElectoralDistrict.pdf");  
			bufReader = new BufferedReader(fileReader);
			
			ArrayList<String> listOfLines = new ArrayList<>(); 
			String line = bufReader.readLine();
			int i = 0;
			boolean isTheEnteredNameValied = false;
			while (line != null) 
			{ 
				listOfLines.add(line); 
				line = bufReader.readLine(); 
				
				if(line != null && line.trim().equals(enteredName.trim()))
				{
					System.out.println("Name is valid and registered in 2020, you can go ahead and register in this application ");
					isTheEnteredNameValied = true;
					messageList.add(0, "Successfull Registration");
					messageList.add(1, line + " is Valid and registered in 2020");
					messageList.add(2, line);
					break;
				}
			}
			
			if(!isTheEnteredNameValied) {
				messageList.add(0, "Failed_Registration");
				messageList.add(1, "The name you entered is not registered in 2020, please register your name before you register in this application");
				
				System.out.println("The name you entered is not registered in 2020, please register your name before you register in this application");
				
				return messageList;
			}
			
			bufReader.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		for(String s: voterNames ) {
			//System.out.println(s+ "  "+voterNames.indexOf(s) );
//			if(StringUtility.isNoneEmpty(s)) {
//				System.out.println(s.trim());				
//			}
//		}
		
		return messageList; 
	}
	
//	public static void main(String[] args) throws Exception { // main method for extracting text from image
//	    
////        License.setLicense("Aspose.OCR.lic");
//            
//        AsposeOCR TextExtractFromImage = new AsposeOCR();
//
//        String ExtractedTextFromImage = TextExtractFromImage.RecognizePage("Alrifai_DL_name.jpg");
//        // Save extracted text to a text file using FileWriter
//        File output = new File("TextExtractFromImageUsingOCR.txt");
//        FileWriter writer = new FileWriter(output);
//        writer.write(ExtractedTextFromImage);
//        writer.flush();
//        writer.close();
//    }
		
		public static void UploadIdCopyForVerification(){
		
		BufferedReader bufReader = null;
		try {
			FileReader fileReader=new FileReader("Alrifai_DL.jpg");  
			//FileReader fileReader=new FileReader("2020_Amman_ThirdElectoralDistrict.pdf");  
			bufReader = new BufferedReader(fileReader);
			
			ArrayList<String> listOfLines = new ArrayList<>(); 
			String line = bufReader.readLine();
			int i = 0;
			boolean isTheEnteredNameValied = false;
			while (line != null) 
			{ 
				listOfLines.add(line); 
				line = bufReader.readLine(); 
				System.out.println(line);	
			}
			
			bufReader.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

