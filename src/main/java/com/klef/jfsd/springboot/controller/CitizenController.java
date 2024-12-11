package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.service.CitizenService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CitizenController 
{
	  @Autowired
	  private CitizenService citizenService;
	  
	  
	  @GetMapping("citizenhome")
	  public ModelAndView citizenhome()
	  {
	    ModelAndView mv=new ModelAndView("citizenhome");
	    return mv;
	  }
	  
	  @GetMapping("citizenlogin")
	  public ModelAndView citizenlogin() {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("citizenlogin");
	      return mv;
	  }

	  
	  @GetMapping("signup")
	  public ModelAndView citizensignup() 
	  {
	    ModelAndView mv=new ModelAndView();
	    mv.setViewName("signup");
	    return mv;
	  }
	  
	  @PostMapping("checkCitizenLogin")
	  //@ResponseBody
	  public ModelAndView checkCitizenLogin(HttpServletRequest request) 
	  {
		   ModelAndView mv = new ModelAndView();
		   String cepicid=request.getParameter("cepicid"); 
		   String cpassword= request.getParameter("cpassword"); 
		   Citizen citizen= citizenService.checkCitizenLogin(cepicid, cpassword); 

	    if(citizen!=null) {
	      //return "citizen login success";
	      mv.setViewName("citizenhome");
	      HttpSession session = request.getSession();
	    	session.setAttribute("citizen", citizen);
	    }
	    else {
	      //return "Citizen login fail";
	      mv.setViewName("citizenlogin");
	      mv.addObject("message","Login Failed!");
	    }
	    return mv;
	  }
	  
	  @PostMapping("/citizenregistration")
	  public ModelAndView citizenRegistration(
	          HttpServletRequest request
//	          ,@RequestParam("epicCardImage") MultipartFile epicCardImage
	          ) {
	      String epicCardNumber = request.getParameter("epicCardNo");
	      String fullName = request.getParameter("fullName");
	      String state = request.getParameter("state");
	      String assembly = request.getParameter("assembly");
	      String mobileNumber = request.getParameter("mobileNo");
	      String parliament = request.getParameter("parliament");
	      String villageCityTown = request.getParameter("villageCityTown");
	      String password = request.getParameter("password");

	      Citizen citizen = new Citizen();
	      citizen.setEpicCardNumber(epicCardNumber);
	      citizen.setFullName(fullName);
	      citizen.setState(state);
	      citizen.setAssembly(assembly);
	      citizen.setMobileNumber(mobileNumber);
	      citizen.setParliament(parliament);
	      citizen.setVillageCityTown(villageCityTown);
	      citizen.setPassword(password);

//	      try {
//	          if (!epicCardImage.isEmpty()) {
//	              citizen.setEpicCardFile(epicCardImage.getBytes());
//	          }
//	      } catch (IOException e) {
//	          e.printStackTrace();
//	          ModelAndView errorView = new ModelAndView("error-page");
//	          errorView.addObject("errorMessage", "Failed to upload EPIC card file.");
//	          return errorView;
//	      }

	      String msg = citizenService.CitizenRegistraion(citizen);

	      ModelAndView mv = new ModelAndView("citizenlogin");
	      mv.addObject("message", msg);
	      return mv;
	  }
	  @GetMapping("citizenprofile")
		public ModelAndView citizenprofile()
		{
		   ModelAndView mv=new ModelAndView("citizenprofile");
		   return mv;
		}

	  @GetMapping("reportissue")
		public ModelAndView reportissue()
		{
		   ModelAndView mv=new ModelAndView("reportissue");
		   return mv;
		}
	  
	  @PostMapping("/addissue")
	  public ModelAndView addissue(
	          HttpServletRequest request
	          ) {
	      String reportId = citizenService.reportcount();
	      String subject = request.getParameter("subject");
	      String location = request.getParameter("location");
	      String assembly = request.getParameter("assembly");
	      String parliment = request.getParameter("parliment");
	      String epicid = request.getParameter("epicid");
	      String issue = request.getParameter("issue");
	      String status = "Not Solved" ;
	      String remarks = "Issue Will be Solved";

	      Issue issues = new Issue();
	      issues.setReportId(reportId);
	      issues.setSubject(subject);
	      issues.setLocation(location);
	      issues.setAssembly(assembly);
	      issues.setParliment(parliment);
	      issues.setEpicid(epicid);
	      issues.setIssue(issue);
	      issues.setStatus(status);
	      issues.setRemarks(remarks);

	       citizenService.AddIssue(issues);

	      ModelAndView mv = new ModelAndView("trackstatus");
	      List<Issue> issuelist = citizenService.viewissuebyepicid(epicid);
		    mv.addObject("issuelist",issuelist);
	      
	      return mv;
	  }
	  
	  @GetMapping("trackstatus")
		public ModelAndView trackstatus(HttpServletRequest request)
		{
		   ModelAndView mv=new ModelAndView("trackstatus");
		   HttpSession session = request.getSession();
		      session.getAttribute("citizen");
		      Citizen c =(Citizen)session.getAttribute("citizen");
		      
		   List<Issue> issuelist = citizenService.viewissuebyepicid(c.getEpicCardNumber());
		    mv.addObject("issuelist",issuelist);
		   return mv;
		}
	  @GetMapping("feedback")
		public ModelAndView feedback()
		{
		   ModelAndView mv=new ModelAndView("feedback");
		   return mv;
		}
	  @PostMapping("/addfeedback")
	  public ModelAndView addfeedback(
	          HttpServletRequest request
	          ) {
		  HttpSession session = request.getSession();
	      session.getAttribute("citizen");
	      Citizen c =(Citizen)session.getAttribute("citizen");
	      String feedbackId = citizenService.feedbackcount();
	      String subject = request.getParameter("subject");
	      String location = request.getParameter("location");
	      String reportid = request.getParameter("report-id");
	      String parliment = c.getParliament();
	      String assembly = c.getAssembly();
	      String epicid = c.getEpicCardNumber();
	      String feedback = request.getParameter("feedback");
	      

	      Feedback feeds = new Feedback();
	      feeds.setFeedbackid(feedbackId);
	      feeds.setSubject(subject);
	      feeds.setLocation(location);
	      feeds.setReportId(reportid);
	      feeds.setParliment(parliment);
	      feeds.setAssembly(assembly);
	      feeds.setEpicid(epicid);
	      feeds.setFeedback(feedback);

	       citizenService.AddFeedback(feeds);

	      ModelAndView mv = new ModelAndView("citizenhome");
	     
	      
	      return mv;
	  }
	  
}
