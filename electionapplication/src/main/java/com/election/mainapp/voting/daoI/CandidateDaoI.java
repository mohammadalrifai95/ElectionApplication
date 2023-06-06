package com.election.mainapp.voting.daoI;

import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.CandidateData;

public interface CandidateDaoI  extends JpaRepository<CandidateData, Integer>{
	
	

}
