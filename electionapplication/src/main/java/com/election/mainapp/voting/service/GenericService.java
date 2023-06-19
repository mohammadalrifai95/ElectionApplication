package com.election.mainapp.voting.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.mainapp.voting.daoI.CandidateDaoI;
import com.election.mainapp.voting.daoI.ConstituencyDaoI;
import com.election.mainapp.voting.daoI.GovernorateDaoI;
import com.election.mainapp.voting.daoI.UserDaoI;
import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.serviceI.GenericServiceI;

@Service
public class GenericService implements GenericServiceI {

	@Autowired
	UserDaoI userDao; 
	
	@Autowired
	CandidateDaoI candidateDao; 
	
	@Autowired
	GovernorateDaoI governorateDao;

	
	@Autowired
	ConstituencyDaoI constituencyDao;
	
	
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

	
	@Override
	public Optional<CandidateData> findaCandidateData(int pageId, int total, Integer id) {
		
		
//		return getTemporarlyUserDataAsDBIsNotAvailable();
		return candidateDao.findById(id); 
		
	}

	@Override
	public List<CandidateData>  findAll(int pageId, int total) {
		
		return candidateDao.findAll();
	}
	

	@Override
	public List<GovernorateData>  findAllGovernorateDataList() {
		
		return governorateDao.findAll();
	}
	
	@Override
	public Optional<GovernorateData>  findById(Long governorateId) {
		
		return governorateDao.findById(governorateId);
	}
	
	
	@Override
	public List<ConstituencyData>  findListOfConstituencyByGovId(Long governorateId) {
		
		Optional<GovernorateData>  governorateData = findById(governorateId);
		
		
		List<ConstituencyData> findByGovernorateData = constituencyDao.findByGovernorateData(governorateData);
		
//		List<ConstituencyData> findByGovernorateDataIdParam = constituencyDao.findById(governorateId); 
		 
		return findByGovernorateData; 
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
