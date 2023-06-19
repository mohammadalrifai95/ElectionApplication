package com.election.mainapp.voting.daoI;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.UserData;

public interface ConstituencyDaoI  extends JpaRepository<ConstituencyData, Integer>{

	
//	@Query("from ConstituencyData c where c.governorateData.id = ?1")  
//	@Query(value = "SELECT * FROM USERS u WHERE u.status = 1",nativeQuery = true)
//	List<ConstituencyData> findByGovernorateData(GovernorateData governorateData);     
//	List<ConstituencyData> findByGovernorateData(Long id);     
	
	
	List<ConstituencyData> findByGovernorateData(Optional<GovernorateData> governorateData);
	
//	@Query("SELECT c FROM ConstituencyData c WHERE c.governorateData.id= :id") 
//	List<ConstituencyData> findById(@Param("id") Long id); 


//	List<ConstituencyData> findAllById(Long governorateId);  
	
	
}
