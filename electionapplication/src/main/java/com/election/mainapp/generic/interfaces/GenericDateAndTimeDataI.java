package com.election.mainapp.generic.interfaces;

import java.sql.Date;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import com.election.mainapp.voting.data.UserData;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

//@Entity
//@Embeddable
public interface GenericDateAndTimeDataI { 


//	@Id  
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	public static final Long id = null;   
	
	//@Temporal(TemporalType.TIMESTAMP)
//    @Column(name = "CREATED_TS", nullable = false)
    //@CreatedDate
    public static final Date createdTs = null;  
//    private  LocalDateTime  createdTs;
    
 
//	@Column(name = "CREATED_BY", nullable = true) 
    //private  UserData createdBy = new UserData(); 
	public static final String createdBy = "";
    
    
//    @Column(name = "UPDATED_TS", nullable = false)
    //@LastModifiedDate 
    public static final Date updatedTs = null;
//    private  LocalDateTime updatedTs; 
    
//    @Column(name = "UPDATED_BY", nullable = true)  
    //private  UserData updatedBy = new UserData();
    public static final String updatedBy = "";
	
 
	
}
