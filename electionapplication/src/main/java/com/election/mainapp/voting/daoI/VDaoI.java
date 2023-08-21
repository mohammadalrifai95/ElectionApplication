/**
 * 
 */
package com.election.mainapp.voting.daoI;

import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.VoterData;

/**
 * @author asf
 *
 */
public interface VDaoI extends JpaRepository<VoterData, Integer>{

	
	
	
	
}
