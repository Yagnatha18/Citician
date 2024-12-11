package com.klef.jfsd.springboot.repository;


import org.springframework.stereotype.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Issue;

@Repository
public interface IssueRepository extends JpaRepository<Issue, String>
{
	
	public List<Issue> findByEpicid(String epicid);

}
