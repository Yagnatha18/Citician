package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.repository.CitizenRepository;
import com.klef.jfsd.springboot.repository.FeedbackRepository;
import com.klef.jfsd.springboot.repository.IssueRepository;

@Service
public class CitizenServiceImpl implements CitizenService
{
	@Autowired
	private CitizenRepository citizenrepository;
	@Autowired
	private IssueRepository issuerepository;
	@Autowired
	private FeedbackRepository feedbackrepository;

	@Override
	public String CitizenRegistraion(Citizen c) {
		citizenrepository.save(c);
		return "Citizen Registered Successfully" ;
	}

	@Override
	public Citizen checkCitizenLogin(String epicCardNumber, String password) {
		return citizenrepository.checkCitizenLogin(epicCardNumber, password);
	}

	@Override
	public String reportcount() {
		
		long count = issuerepository.count(); // Count existing issues
        return "TC" + (count + 101); 
	}

	@Override
	public void AddIssue(Issue i) {
		issuerepository.save(i);
		
	}

	@Override
	public List<Issue> viewissuebyepicid(String epicid) {
		// TODO Auto-generated method stub
		return issuerepository.findByEpicid(epicid);
	}

	@Override
	public String feedbackcount() {
		long count = feedbackrepository.count(); // Count existing issues
        return "FD" + (count + 101); 
	}

	@Override
	public void AddFeedback(Feedback f) {
		// TODO Auto-generated method stub
		feedbackrepository.save(f);
	}

}
