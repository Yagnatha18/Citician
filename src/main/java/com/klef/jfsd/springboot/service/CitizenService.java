package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;

public interface CitizenService 
{
	public String CitizenRegistraion(Citizen c);
	public Citizen checkCitizenLogin(String epicCardNumber,String password);
	public String reportcount();
	public void AddIssue(Issue i);
	public List<Issue> viewissuebyepicid(String epicid);
	public String feedbackcount();
	public void AddFeedback(Feedback f);
}
