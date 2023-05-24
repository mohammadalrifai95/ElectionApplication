package com.election.mainapp.voting.wrapper;

import com.election.mainapp.voting.dao.VoterDao;
import com.election.mainapp.voting.data.VoterData;

public class VoterWrapper {
	
	VoterData voterData ;
	VoterDao voterDao;
	
	
	
	public VoterData getVoterById() {
			
		VoterData v= voterDao.getVoterById(voterData.getId());
		
		return voterData;
	}
	
	
	public VoterWrapper() {
		
		voterData = new  VoterData();
		voterDao = new VoterDao();

	}

}
