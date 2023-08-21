package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.util.Set;
import java.util.function.Consumer;
import java.util.HashSet;

import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.Data;

@Data
@Entity
@Table(name = "T_USER")
public class UserData implements Serializable{ 

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	 private Integer id;
	
	//GenericDateAndTimeData genericDateAndTimeData;

	private String fullName;
	
     private String userName;
     
     private String  password;
     
     private String  role;
     
     private String  status;

     private String  Name;
     
     private String  firstName;
     
     private String  middleName;
     
     private String  lastName;

     private String  email;

     private String  mobile;

     private String  lastUpdate;
     
     private String  voterFlag;
     
     private String  type;

     //This did not create voter_id in T_user 
//     //@OneToOne(mappedBy = "userData") 
//     @OneToOne(mappedBy = "userData", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//     private VoterData voterData;
     
     //This will create voter_id in T_user
 	@OneToOne
    @JoinColumn(name="voter_id")
    private VoterData vData;
    
     
 	@OneToOne
    @JoinColumn(name="candidate_id")
    private CandidateData candidateData;
    
 	
 	private GenericDateAndTimeData genericDateAndTimeData;

 	
//     Consumer  consumer;
     
     
//     @Transient
//     private static String  voterFlag2;
	
	
//     @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//     @JoinTable(name = "user_roles", joinColumns = @JoinColumn (name = "user_id"), inverseJoinColumns = @JoinColumn(name ="role_id"))
//     private Set<RoleData> roleDataSet = new HashSet<>(); 

//	public Set<RoleData> getRoleDataSet() {
//		return roleDataSet;
//	}
//
//	public void setRoleDataSet(Set<RoleData> roleDataSet) {
//		this.roleDataSet = roleDataSet;
//	}

	public UserData() {
		
		genericDateAndTimeData = new GenericDateAndTimeData(); 
		
	}

}
