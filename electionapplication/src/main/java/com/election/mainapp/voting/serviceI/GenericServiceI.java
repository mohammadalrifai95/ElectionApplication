package com.election.mainapp.voting.serviceI;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.UserData;

public interface GenericServiceI {

	void saveUser(UserData userData);
	void saveCandidate(CandidateData candidateData);
	

	UserData findUser(UserData userData);
	UserData findById(int id);
	
	

}
