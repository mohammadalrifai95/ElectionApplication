package com.election.mainapp.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.AnyRequestMatcher;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
//import org.thymeleaf.spring6.SpringTemplateEngine;
//import org.thymeleaf.spring6.templateresolver.SpringResourceTemplateResolver;
//import org.thymeleaf.spring6.view.ThymeleafViewResolver;
//import org.thymeleaf.templatemode.TemplateMode;

import com.election.mainapp.voting.daoI.UserDaoI;

import jakarta.annotation.Resource;
import jakarta.websocket.Encoder;



@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SpringSecurityConfigurer extends AbstractSecurityWebApplicationInitializer{
	//extends  WebSecurityConfigurerAdapter  
	 

	@Autowired
	UserDetailsServiceImpl userDetailsServiceImpl ;
	
	@Autowired
	UserDaoI userDaoRepo;
	
	
	public SpringSecurityConfigurer() {
		// TODO Auto-generated constructor stub
	}
	
	
	//Authentication
	@Bean
	public UserDetailsService userDetailsService() {
		
		
		return userDetailsServiceImpl;
		
	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder(){ 
		
		return NoOpPasswordEncoder.getInstance();
		
		//return  new BCryptPasswordEncoder() ;
	}
	

	//Authorization
//	  @Bean
//	  SecurityFilterChain SecurityFilterChainOrder1(HttpSecurity http) throws Exception {
//
//		   
//	 
//		  
//		  http.csrf().disable()
//		  	.authorizeHttpRequests()
//		  	.requestMatchers("/").permitAll() 
//		  	.and()
//		  	
//		  	.authorizeHttpRequests()
//		  	.requestMatchers("/admin", "/user", "/candidacyconditions").authenticated() 
//		  	.and()
//		  	
//		  	.authorizeHttpRequests()
//		  	.requestMatchers("/home", "/contactUs").permitAll()  
//		  	.and()
//		  	
//		  	.formLogin().
//		  	loginPage("/login").permitAll()
//		  	//.defaultSuccessUrl("/index").failureUrl("/loginError") 
//		  	.and()
//		  	.logout()
//            .permitAll();
//
//		  return http.build();
//		  
//		  //When add permitAll() "/home" make sure in controller it does not have any @PreAuthorize and it should be @ResponseBody
//		  
//	  	
//	  }
	


	
//	Authorization
	  @Bean
	  SecurityFilterChain SecurityFilterChainOrder1(HttpSecurity http) throws Exception {
		http.authorizeRequests().requestMatchers("/").permitAll().requestMatchers("/home", "/").permitAll()
				.requestMatchers("/admin", "/user", "/candidacyconditions").authenticated().requestMatchers("/home", "/contactUs")
				.permitAll().and().formLogin().loginPage("/login").permitAll()
				.and().logout().permitAll();

		http.csrf().disable();
		
		return http.build();
	}
    
	  
    
	  
	 //Only  AuthenticationProvider can talk to UserDetailsService, ..
	 //..where UserDetailsService can talk to DB to validate username and pass 
    @Bean  
    public AuthenticationProvider autheticationProvider() { 
    	
    	DaoAuthenticationProvider authenticationProviderDao = new DaoAuthenticationProvider();
    	//authenticationProviderDao.setUserDetailsService(userDetailsService());  
    	authenticationProviderDao.setUserDetailsService(userDetailsService());   
    	authenticationProviderDao.setPasswordEncoder(passwordEncoder());

    	return authenticationProviderDao; 
	}


    
//    @Resource
//    protected ApplicationContext applicationContext;
//    @Bean
//    public SpringResourceTemplateResolver thymeleafTemplateResolver(){
//        final SpringResourceTemplateResolver templateResolver = new SpringResourceTemplateResolver();
//        templateResolver.setApplicationContext(applicationContext);
//        templateResolver.setPrefix("/WEB-INF/jsp/"); 
//        templateResolver.setSuffix(".jsp");  
//        //templateResolver.setSuffix(".html");
//        //templateResolver.setTemplateMode(TemplateMode.HTML);  
//        templateResolver.setCacheable(false);
//        templateResolver.setOrder(0);
//        return templateResolver;
//    }
    
    

 
}
