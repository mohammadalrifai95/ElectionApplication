package com.election.mainapp.voting.serviceI;

import java.util.List;
import java.util.Optional;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.UserData;

public interface GenericServiceI {

	void saveUser(UserData userData);
	void saveCandidate(CandidateData candidateData);
	

	UserData findUser(UserData userData);
	
	
	UserData findById(int id);
	
	
	Optional<CandidateData> findaCandidateData(int pageId, int total, Integer id);
	
	public List<CandidateData>  findAll(int pageId, int total);

	public List<GovernorateData>  findAllGovernorateDataList();
	
	public List<ConstituencyData>  findListOfConstituencyByGovId(Long governorateId);
	public Optional<GovernorateData> findById(Long governorateId);  

	
	

}
