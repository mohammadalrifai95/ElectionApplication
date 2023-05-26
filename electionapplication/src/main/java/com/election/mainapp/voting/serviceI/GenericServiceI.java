package com.election.mainapp.voting.serviceI;

import com.election.mainapp.voting.data.UserData;

public interface GenericServiceI {

	void saveUser(UserData userData);

	UserData findUser(UserData userData);

}
