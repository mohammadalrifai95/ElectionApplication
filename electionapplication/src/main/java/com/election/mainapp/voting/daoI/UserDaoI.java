package com.election.mainapp.voting.daoI;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.UserData;

public interface UserDaoI  extends JpaRepository<UserData, Integer>{

	
	//@Query("SELECT u FROM User u WHERE u.status = ?1 and u.name = ?2")
	@Query("from UserData  where userName = ?1 and password = ?2")
	UserData findByUserNameAndPassword(String userName, String password );

	UserData findById(int id);
	
	UserData findByUserName(String userName);
	
}
