package com.election.mainapp.voting.daoI;

import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.CandidateData;

import java.util.List;
import java.util.Optional;


public interface CandidateDaoI  extends JpaRepository<CandidateData, Integer>{
	
//	@Query("from CandidateData ")
//	List<CandidateData> findaCandidateDatas();
	
	
	Optional<CandidateData> findById(Integer id);
	
	List<CandidateData> findAll();
	
//	@Query("from CandidateData  where id between ? and ?")
//	List<CandidateData> findaCandidateDatasLimited();
	
}
