package com.election.mainapp.security;
import java.io.Serializable;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException; 
import java.util.ArrayList;

public class AuthenticationProviderImpl { //implements AuthenticationProvider, Serializable {
//implements AuthenticationProvider, Serializable {
//	
//	public AuthenticationProviderSub() {
//		
//	}
//
	
//	
//   @Override
//    public boolean supports(Class<? extends Object> authentication) {
//        return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication));
//    }
//
//	@Override
//	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
//		// TODO Auto-generated method stub
//		return null;
//	}	
//	
	
	
////    @Override
//    public boolean supports(Class<? extends Object> authentication) { 
//     
//    	return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication));
//    }
//
//    @Override
//    public Authentication authenticate(Authentication authentication) 
//      throws AuthenticationException {
// 
//        String name = authentication.getName();
//        String password = authentication.getCredentials().toString();
//        
////        if (shouldAuthenticateAgainstThirdPartySystem()) {
// 
//            // use the credentials
//            // and authenticate against the third-party system
//            return new UsernamePasswordAuthenticationToken(name, password, new ArrayList<>());
////        } else {
////            return null;
////        }
//    }
    // ...
}
