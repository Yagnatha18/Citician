package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Issue;

public interface FeedbackRepository extends JpaRepository<Feedback, String> {

}
