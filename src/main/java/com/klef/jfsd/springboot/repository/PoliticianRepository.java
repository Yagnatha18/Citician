package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Politician;

@Repository
public interface PoliticianRepository extends JpaRepository<Politician, String> {
	
	@Query("select p from Politician p where p.idCode=?1 and p.password=?2") 
	public Politician checkPoliticianLogin(String idCode, String password) ;
}

