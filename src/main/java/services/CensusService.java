package services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repositories.CensusRepository;

import domain.Census;
import domain.User;


@Service
@Transactional
public class CensusService {
	
	// Managed repository -----------------------------------------------------
	@Autowired
	private CensusRepository censusRepository;
	
	// Supporting services ----------------------------------------------------
	
	
	
	// Constructors -----------------------------------------------------------
	public CensusService(){
		super();
	}
	
	// CRUDs Methods -----------------------------------------------------------
	
	public Census create(){
		Census census = new Census();
		
		Collection<User> users = new ArrayList<User>();
		census.setUsers(users);
		Date date = new Date();
		census.setDate(date);
		
		return census;
	}
	
	public Census save(Census census){
		//Assert.isTrue(actorService.isAdministrator());
		Census c = censusRepository.save(census);
		return c;
	}
	
	public void delete(int censusId){
		
		censusRepository.delete(censusId);
	}
	
	public Census findOne(int censusId){
		
		Census c = censusRepository.findOne(censusId);
		return c;
	}
	

}