package com.election.mainapp.voting.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.mainapp.voting.daoI.CandidateDaoI;
import com.election.mainapp.voting.daoI.UserDaoI;
import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.serviceI.GenericServiceI;

@Service
public class GenericService implements GenericServiceI {

	@Autowired
	UserDaoI userDao; 
	
	@Autowired
	CandidateDaoI candidateDao; 
	
	public GenericService() {

	}

	@Override
	public void saveUser(UserData userData) {
		
		
		userDao.save(userData);
		
	}

	@Override
	public UserData findUser(UserData userData) {
		
		
//		return getTemporarlyUserDataAsDBIsNotAvailable();
		return userDao.findByUserNameAndPassword(userData.getUserName(), userData.getPassword());
		
	}

	private UserData getTemporarlyUserDataAsDBIsNotAvailable() {

		UserData userData = new UserData();
		userData.setUserName("1");
		userData.setPassword("1");
		
		return userData;
	}

	@Override
	public UserData findById(int id ) {
		
		return userDao.findById(id);		
	}

	@Override
	public void saveCandidate(CandidateData candidateData) {
		
		candidateDao.save(candidateData);
		
	}
	
	
}
