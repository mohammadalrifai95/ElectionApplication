package com.election.mainapp.voting.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.election.mainapp.voting.daoI.CandidateDaoI;
import com.election.mainapp.voting.daoI.VDaoI;
import com.election.mainapp.voting.daoI.VoterDaoI;
import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.serviceI.VoterServiceI;

@Service
public class VoterService implements VoterServiceI{

	public VoterService() {

	}
	
	@Autowired
	VoterDaoI voterDao;
	
	@Autowired
	VDaoI vDao;  
	
	@Autowired
	CandidateDaoI candidateDao; 
	
	@Override
	@Transactional 
	public void saveVoter(VoterData voterData) {
		
		//voterDao.save(voterData);
		
//		VoterData VoterData = new VoterData();
//		VoterData.setFullName("Test full name");
//		VoterData.setUserName("Test user Name");
//		VoterData.setPassword("Test Password");
////	VoterData.setCandidateData(null);   
		//voterDao.save(voterData);
		vDao.save(voterData); 
		
		
		CandidateData CandidateData = new CandidateData();
		CandidateData.setFullName("Test full name");
		CandidateData.setFirstName("Test First Name");
		CandidateData.setLastName("Test Last Name"); 

		candidateDao.save(CandidateData); 
	}

}
