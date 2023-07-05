package com.election.mainapp.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.election.mainapp.voting.daoI.UserDaoI;
import com.election.mainapp.voting.data.UserData;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	
	
	@Autowired
	UserDaoI userDaoRepo;
	
	
	public UserDetailsServiceImpl() {
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
				
		UserData userData =userDaoRepo.findByUserName(username);
		
		if(userData == null) {
			throw new UsernameNotFoundException("Username or password is incorrect, Please enter valid username and password"); 
		}
		
		 //HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	     //String enteredPassword = request.getParameter("password");
	     //System.out.println("password =" + enteredPassword);
		
		
		return new UserDetailsImpl(userData); 
	}

	
	
	
}
