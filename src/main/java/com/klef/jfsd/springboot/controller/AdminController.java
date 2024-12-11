package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Citizen;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Politician;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
	   ModelAndView mv=new ModelAndView("index");
	   return mv;
	}
	@GetMapping("index")
	public ModelAndView index()
	{
	   ModelAndView mv=new ModelAndView("index");
	   return mv;
	}
	
	@GetMapping("adminhome")
	  public ModelAndView adminhome()
	  {
	    ModelAndView mv=new ModelAndView("adminhome");
	    return mv;
	  }
	
	@GetMapping("adminlogin")
	public ModelAndView adminLogin() 
	{
		ModelAndView mv=new ModelAndView();
	    mv.setViewName("adminlogin");
	    return mv;
	}
	
	@PostMapping("checkAdminLogin")
	//@ResponseBody
	public ModelAndView checkAdminLogin(HttpServletRequest request) 
	{
		 ModelAndView mv = new ModelAndView();
		 String auname=request.getParameter("auname"); 
		 String apassword= request.getParameter("apassword"); 
		 Admin admin= adminService.checkAdminLogin(auname, apassword); 

	    if(admin!=null) {
	      //return "admin login success";
	    	HttpSession session = request.getSession();
	    	session.setAttribute("admin", admin); // admin is session object
	      mv.setViewName("adminhome");
	      
	    }
	    else {
	      //return "admin login fail";
	      mv.setViewName("adminlogin");
	      mv.addObject("message","Login Failed!");
	    }
	    return mv;
	  }
	@GetMapping("addpolitician")
	public ModelAndView addpolitician()
	{
	   ModelAndView mv=new ModelAndView("addpolitician");
	   return mv;
	}
	@GetMapping("adminprofile")
	public ModelAndView adminprofile()
	{
	   ModelAndView mv=new ModelAndView("adminprofile");
	   return mv;
	}
	
	@GetMapping("viewallpoliticians")
	public ModelAndView viewallpoliticians() 
	{
		ModelAndView mv=new ModelAndView();
	    mv.setViewName("viewallpoliticians");
	    List<Politician> politicians = adminService.viewAllPoliticians();
	    mv.addObject("politicianlist",politicians);
	    return mv;
	}
	
	@GetMapping("viewallcitizens")
	public ModelAndView viewallcitizens() 
	{
		ModelAndView mv=new ModelAndView();
	    mv.setViewName("viewallcitizens");
	    List<Citizen> citizens = adminService.viewAllcitizens();
	    mv.addObject("citizenlist",citizens);
	    return mv;
	}
	@GetMapping("viewallreports")
	public ModelAndView viewallissues() 
	{
		ModelAndView mv=new ModelAndView();
	    mv.setViewName("viewallreports");
	    List<Issue> issues = adminService.viewallreports();
	    mv.addObject("issues",issues);
	    return mv;
	}
	@GetMapping("viewallfeedbacks")
	public ModelAndView viewallfeedbacks() 
	{
		ModelAndView mv=new ModelAndView();
	    mv.setViewName("viewallfeedbacks");
	    List<Feedback> feeds = adminService.viewallfeedbacks();
	    mv.addObject("feeds",feeds);
	    return mv;
	}

}
