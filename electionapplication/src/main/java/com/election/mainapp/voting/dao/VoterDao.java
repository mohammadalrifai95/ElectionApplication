package com.election.mainapp.voting.dao;

import org.springframework.stereotype.Repository;

import com.election.mainapp.voting.daoI.VoterDaoI;
import com.election.mainapp.voting.data.VoterData;

@Repository
public class VoterDao implements VoterDaoI{

	public VoterDao() {

	}

	
	@Override
	public VoterData getVoterById(int id) {

		VoterData v = new VoterData();
		
		
		return v;
	}

}
