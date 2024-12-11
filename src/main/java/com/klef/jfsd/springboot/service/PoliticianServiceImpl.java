package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.repository.PoliticianRepository;

@Service
public class PoliticianServiceImpl implements PoliticianService
{
	@Autowired
	private PoliticianRepository politicianrepository;
	
	@Override
	public String AddPolitician(Politician p) {
		politicianrepository.save(p);
		return "Politician Added Successfully";
	}

	@Override
	public Politician checkPoliticianLogin(String idCode, String password) {
		return politicianrepository.checkPoliticianLogin(idCode, password);

	}

}
