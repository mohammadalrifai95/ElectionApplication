package com.election.mainapp.voting.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.mainapp.voting.daoI.UserDaoI;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.serviceI.GenericServiceI;

@Service
public class GenericService implements GenericServiceI {

	@Autowired
	UserDaoI userDao; 
	
	public GenericService() {

	}

	@Override
	public void saveUser(UserData userData) {
		
		
		userDao.save(userData);
		
	}

	@Override
	public UserData findUser(UserData userData) {
		
		return userDao.findByUserNameAndPassword(userData.getUserName(), userData.getPassword());
		
	}

}
