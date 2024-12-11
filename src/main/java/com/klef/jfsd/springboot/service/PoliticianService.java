package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Politician;

public interface PoliticianService 
{
	public String AddPolitician(Politician p);
	public Politician checkPoliticianLogin(String idCode,String password);
}
