package repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domain.Census;

@Repository
public interface CensusRepository extends JpaRepository<Census, Integer>{
	
	
}
