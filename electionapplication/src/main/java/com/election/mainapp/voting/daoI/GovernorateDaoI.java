package com.election.mainapp.voting.daoI;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.GovernorateData;

public interface GovernorateDaoI  extends JpaRepository<GovernorateData, Integer>{

	
	List<GovernorateData> findAll();
	
	Optional<GovernorateData> findById(Long id) ; 
}
