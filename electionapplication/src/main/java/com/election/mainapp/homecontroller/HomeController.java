package com.election.mainapp.homecontroller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.integration.leader.Candidate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.service.GenericService;
import com.election.mainapp.voting.serviceI.GenericServiceI;
import com.election.mainapp.generic.StringUtility;
import com.election.mainapp.voting.data.AreaData;

@Controller
public class HomeController {

	@Autowired
	GenericServiceI genericService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		

		return "home";
	}
	
	
	
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView afterLogin(UserData usrdta) {
		
		
		ModelAndView mv= new ModelAndView();
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			
			mv.setViewName("home");
			mv.addObject("errorLoginMessage", "Please enter Username and Password");
			return mv;
		}
		
		
		UserData userData = genericService.findUser(usrdta);
		
		
		
		
		if(userData == null ) {
			
			mv.setViewName("home");
			mv.addObject("errorLoginMessage", "Username or password is incorrect, Please enter valid username and password");
		}
		else {
			mv.setViewName("home2");
		}
		
		return mv;
		
	}
	
	
	@RequestMapping("/register")
	public ModelAndView welcome(UserData userData) {
		ModelAndView mv = new ModelAndView();
		
		
		genericService.saveUser(userData);
		
		mv.setViewName("home2");
		mv.addObject("userData", userData);
		
		return mv;
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
	
	
}
