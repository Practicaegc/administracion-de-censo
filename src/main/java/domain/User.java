package domain;

import java.util.Collection;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;


@Entity
@Access(AccessType.PROPERTY)
public class User extends DomainEntity{
	
	private String name;
	private String password;
	
	
	private Collection<Census> censuses;
	
	public User(){
		
	}

	@NotBlank
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@NotBlank
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	@NotNull
	@ManyToMany
	public Collection<Census> getCensuses() {
		return censuses;
	}

	public void setCensuses(Collection<Census> censuses) {
		this.censuses = censuses;
		
	}
	
	
	
	
	

}
