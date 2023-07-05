package com.election.mainapp.security;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.ArrayList;  
import org.springframework.security.core.authority.SimpleGrantedAuthority;  

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.election.mainapp.voting.data.UserData;

import lombok.Data;

@Data
public class UserDetailsImpl implements UserDetails{

	
	private UserData userData;
	
	//private List<GrantedAuthority> Authorities;
	
	public UserDetailsImpl() {
		// TODO Auto-generated constructor stub
	}
	public UserDetailsImpl(UserData userData) {
		this.userData = userData;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		//we have to make one to many relationship  
		List<SimpleGrantedAuthority> authorities = new ArrayList<>();  
		authorities.add(new SimpleGrantedAuthority(userData.getRole())); 
		
		
		//in case of many to many added
		//Set<RoleData> roleDataSet = userData.getRoleDataSet();
		//List<SimpleGrantedAuthority> authorities_authorities_authorities = new ArrayList<>();
		
		//for (RoleData roleData :  roleDataSet ) {
		//authorities.add(new SimpleGrantedAuthority(roleData.getName()));
		//}
		
		
		return authorities; 
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return userData.getPassword();
	}

	@Override
	public String getUsername() {

		return userData.getUserName();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true; 
	}

}
