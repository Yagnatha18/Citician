package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Politician;

import java.util.List;

public interface AdminService 
{
	public Admin checkAdminLogin(String username, String password);
	public List<Politician> viewAllPoliticians();
	public List<Citizen> viewAllcitizens();
	public List<Issue> viewallreports();
	public List<Feedback> viewallfeedbacks();

}
