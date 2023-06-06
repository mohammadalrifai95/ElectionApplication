package com.election.mainapp.homecontroller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.client.RestTemplate;


import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.serviceI.GenericServiceI;

//import ch.qos.logback.classic.Logger;
import java.util.logging.Logger;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
//import jakarta.ws.rs.HttpMethod;

import com.election.mainapp.generic.StringUtility;
import com.election.mainapp.generic.interfaces.FooExtendedI;
import com.election.mainapp.voting.data.AreaData;



@Controller
public class HomeController {

	@Autowired
	Logger logger; //= Logger.getLogger(HomeController.class.getName());
	
	@Autowired
	GenericServiceI genericService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		

		  String[] countryCodes = Locale.getISOCountries();
//		for (String countryCode : countryCodes) {
//		    Locale locale = new Locale("", countryCode);
//		    String code = locale.getCountry();
//		    String name = locale.getDisplayCountry();
//		     
//		    System.out.printf("[%s] %s\n", code, name);
//		}
		 
	        Map<String, String> mapCountries = new TreeMap<>();
	 
	        for (String countryCode : countryCodes) {
	            Locale locale = new Locale("", countryCode);
	            String code = locale.getCountry();
	            String name = locale.getDisplayCountry();
	            mapCountries.put(code, name);
	        }
	 
	        request.setAttribute("mapCountries", mapCountries);
	 
	        //String registerForm = "frontend/register_form.jsp";
	        //RequestDispatcher dispatcher = request.getRequestDispatcher(registerForm);
	       // dispatcher.forward(request, response);
		
		
		
		
		return "home";
	}
	




	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs( HttpServletRequest request) {
		
		
		
		
		return "contactus";
	}
	
	
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public String home2( HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String usenName = (String)session.getAttribute("usenName");
		String password= (String)session.getAttribute("password");
		
		System.out.println("usenName = " +usenName + "  password = "+ password);
		
		
		return "home2";
	}
	
	
	
	private void printThing(FooExtendedI mfI) {
		System.out.println("printThing called **");
		mfI.print();
	}
	
	
	
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView AtemptingOfLogin(UserData usrdta, HttpServletRequest request, String ... alredyLoggedin) {
		
		
		lambdaExpressionTest();
		
		
		logger.info("This is my first log4j's statement");
		
		ModelAndView mv= new ModelAndView();
		HttpSession session = request.getSession();
		UserData userData = null;
		if(alredyLoggedin == null) {
		//mv.addObject("errorLoginMessage", "");
		
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			//Username and password left empty
			mv.setViewName("home");
			mv.addObject("errorLoginMessage", "Please enter Username and Password");
			return mv;
		}
		
		
		userData = genericService.findUser(usrdta);
		if(userData == null ) {
			//Incorrect user and pass entered
			mv.setViewName("home");
			mv.addObject("errorLoginMessage", "Username or password is incorrect, Please enter valid username and password");
		}
		else {
			session.setAttribute("usenName", userData.getUserName());
			session.setAttribute("password", userData.getPassword());
			
			mv.setViewName("home2");
		}
		
		}else {
			System.out.println(session.getAttribute("usenName"));
			mv.setViewName("home2");
		}
		
		if(userData!=null) {
			consumeRestAPIUsingRestTemplateTest(userData);			
		}
		
		
		return mv;
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
	public List<String> userRegistration(UserData usrdta) {


		List<String> messageList = new ArrayList<String>();

		
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			messageList.add("Failed_Registration");
			messageList.add("To complete registration Please fill all below required fields.");
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
	public ModelAndView getCandidateByAre(@RequestParam int areId) {
		
		ModelAndView mv = new ModelAndView();
		
		
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
	
	
	
//	@RequestMapping("/getCandidateByAre")
//	@ResponseBody
//	public String getCandidateByAre(@RequestParam int areId, HttpRequest request) {
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
		
		
		return "home";
	}
	
	
	
	
	
	@RequestMapping("/addCandidateFromContactusScreen")
	@ResponseBody
	public List<String> addCandidateFromContactusScreen(CandidateData candidateData) {


		List<String> messageList = new ArrayList<String>();

		
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
		
		return messageList;
	}
	
	
}
