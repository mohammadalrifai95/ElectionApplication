package com.election.mainapp.voting.dao;

import org.springframework.stereotype.Repository;

import com.election.mainapp.voting.daoI.AreaDaoI;
import com.election.mainapp.voting.daoI.VoterDaoI;
import com.election.mainapp.voting.data.VoterData;

@Repository
public class AreaDao implements AreaDaoI{

	public AreaDao() {
		
	}
	
	
	@Override
	public VoterData getAreById(int id) {

		VoterData v = new VoterData();
		
		
		return v;
	}


}
