package com.election.mainapp.security;

import org.springframework.beans.factory.annotation.Autowired;
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

import com.election.mainapp.voting.daoI.UserDaoI;

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
		
//		UserDetails admin = User.withUsername("admin")
//		.password("admin")
//		.roles("ADMIN")
//		.build();
//
//	
//	UserDetails user = User.withUsername("user")
//			.password("user")
//			.roles("USER") 
//			.build();
//	
//	
//	return new InMemoryUserDetailsManager(admin, user);
//		UserDetailsService userDetailsServiceImpl = new  UserDetailsServiceImpl();  
		
		
		return userDetailsServiceImpl;
		
		
	}
	
	
	@Bean
	public PasswordEncoder passwordEncoder(){ 
		
		return NoOpPasswordEncoder.getInstance();
		
		//return  new BCryptPasswordEncoder() ;
	}
	

	//Authorization
	  @Bean
	  SecurityFilterChain SecurityFilterChainOrder1(HttpSecurity http) throws Exception {

		  return 
		  http.csrf().disable()
		  	.authorizeHttpRequests()
		  	.requestMatchers("/", "/home", "/login").permitAll()
		  	.and()
		  	
		  	.authorizeHttpRequests()
		  	.requestMatchers("/admin", "/user").authenticated() 
		  	.and().formLogin()
		  	.and().build();
	  	
	  }
	
	
	//Authentication
//	@Bean
//	public UserDetailsService userDetailsService() {
//		
//		
//		UserDetails admin = User.withUsername("admin")
//				.password("admin")
//				.roles("ADMIN")
//				.build();
//		
//	
//		UserDetails user = User.withUsername("user")
//				.password("user")
//				.roles("USER") 
//				.build();
//		
//		
//		return new InMemoryUserDetailsManager(admin, user);
//		
////	  return new  UserDetailsServiceImpl();   
//	}
	
//	@Bean 
//	public  InMemoryUserDetailsManager userDetailsService2() {
//		
//		UserDetails admin = User.withUsername("admin")
//				.password("admin")
//				.roles("ADMIN")
//				.build();
//		
//	
////		UserDetails user = User.withUsername("user")
////				.password("user")
////				.roles("USER") 
////				.build();
//		
//		return new InMemoryUserDetailsManager(admin);
//		
//	}
//	
//	@Bean 
//	public SecurityFilterChain SecurityFilterChain(HttpSecurity http) throws Exception {
//		
//		http.authorizeHttpRequests((authz) -> authz 
//				.requestMatchers("admin") 
////				.anyRequest() 
//				.authenticated()
//				)
//				.httpBasic();
//
//		
//		return http.build();
//		
//	}
//	
	

    
//	  @Bean 
//	  public PasswordEncoder getPassEncoded() { 
//		  return NoOpPasswordEncoder.getInstance();
		  
//		  return new BCryptPasswordEncoder(); 
//	  }

//    @Override    
//    protected void configure(HttpSecurity http) throws Exception {    
//          
//	      http.authorizeRequests().  
//	      requestMatchers("/home", "/login", "/Login", "/").permitAll()      
//	      .requestMatchers("/admin").hasRole("ADMIN")     
//	      .requestMatchers("/user").hasRole("USER")   
//	      .and()  
//	      .formLogin()  ; 
//	      .loginPage("/login")  
//	      .and()  
//	      .logout()  
//	      .logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
//	      
//    }   
	
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//    	http
//    		.formLogin(form -> form
//    			.loginPage("/login")
//    			.permitAll()
//    		);
//    	// ...
//    }
    
	  //let Spring Security allow the use for hasPermission in the JSP page?
//	  protected Class<?>[] getRootConfigClasses() {
//		    return new Class[] {
//		    		SpringSecurityConfigurer.class,
//		    };
//		  }

	  
	  
    
	//Authorization
//    @Bean
//    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
    			
//  		http
//		  .csrf().disable()
//		  .authorizeHttpRequests()
//		  .requestMatchers("/", "/home").permitAll()//do not authenticate it(do not show login page)
//		  .and()
//		  .authorizeHttpRequests()
//		  .requestMatchers("/admin").hasRole("ADMIN")
//		  .and()
//		  .authorizeHttpRequests()
//		  .requestMatchers("/user").hasRole("USER")  
//		  .and()
//		  .formLogin()
//		  ; 
//	      
//	      return http.build();
    	
//    	http
//		.authorizeHttpRequests((requests) -> requests
//			.anyRequest().authenticated()
//		)
//		.httpBasic(Customizer.withDefaults())
//		.formLogin(Customizer.withDefaults());
//	return http.build();	
//	      
//	  }
	  
	  
//	  @Bean
//	  @Order(1) 
//	  SecurityFilterChain SecurityFilterChainOrder1(HttpSecurity http) throws Exception {
//	  	http
//	  		.authorizeHttpRequests((authorize) -> authorize
//	  			.requestMatchers("/", "/login", "/home").permitAll()
//	  			.requestMatchers("/admin").hasRole("ADMIN")
//	  			.requestMatchers("/user").hasRole("USER") 
//	  			.anyRequest().authenticated()
//	  		);
//
//	  	return http.build();
//	  }

	  
//	  @Bean
//	  @Order(2) 
//	  SecurityFilterChain SecurityFilterChainOrder2(HttpSecurity http) throws Exception {
//		  http
//		  .authorizeHttpRequests((authorize) -> authorize
//				  .requestMatchers("/admin").permitAll()//hasAuthority("ROLE_ADMIN")  
//				  .anyRequest().authenticated()
//				  );
//		  
//		  return http.build();
//	  }

	  
//	  @Bean
//	  @Order(3) 
//	  SecurityFilterChain SecurityFilterChainOrder3(HttpSecurity http) throws Exception {
//		  http
//		  .authorizeHttpRequests((authorize) -> authorize
//				  .requestMatchers("/user").permitAll()//hasAuthority("ROLE_USER")
//				  .anyRequest().authenticated()
//				  );
//		  
//		  return http.build();
//	  }
	  
    
	  
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

    
 
}
