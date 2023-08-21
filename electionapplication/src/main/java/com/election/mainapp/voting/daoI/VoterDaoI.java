package com.election.mainapp.voting.daoI;

import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.VoterData;


public interface VoterDaoI  extends JpaRepository<VoterData, Integer>{
	
	VoterData getVoterById(int id);
	
	
}
