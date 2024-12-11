package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.FeedbackRepository;
import com.klef.jfsd.springboot.repository.IssueRepository;
import com.klef.jfsd.springboot.repository.PoliticianRepository;

@Service
public class AdminServiceImpl implements AdminService  
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private PoliticianRepository politicianRepository;
	@Autowired
	private CitizenRepository citizenRepository;
	@Autowired
	private IssueRepository issueRepository;
	@Autowired
	private FeedbackRepository feedbackRepository;
	
	@Override
	public Admin checkAdminLogin(String username, String password) {
		   return adminRepository.checkAdminLogin(username, password);
		}

	@Override
	public List<Politician> viewAllPoliticians() {
		// TODO Auto-generated method stub
		return politicianRepository.findAll();
	}

	@Override
	public List<Citizen> viewAllcitizens() {
		// TODO Auto-generated method stub
		return citizenRepository.findAll();
	}

	@Override
	public List<Issue> viewallreports() {
		// TODO Auto-generated method stub
		return issueRepository.findAll();
	}

	@Override
	public List<Feedback> viewallfeedbacks() {
		// TODO Auto-generated method stub
		return feedbackRepository.findAll();
	}
}
