package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "feedback_table")  
public class Feedback {

    @Id
    @Column(name = "feedback_id", length = 10, nullable = false, unique = true)
	private String feedbackid;
    
    @Column(name = "subject", length = 100, nullable = false)
    private String subject;

    @Column(name = "location", length = 100, nullable = false)
    private String location;

    @Column(name = "report_id", length = 50)
    private String reportId;
    @Column(name = "assembly", nullable = false)
    private String assembly;
    
    @Column(name = "parliment", nullable = false)
    private String parliment;
    
    @Column(name = "epicid", nullable = false)
    private String epicid;

    @Column(name = "feedback", nullable = false)
    private String feedback;

	public String getFeedbackid() {
		return feedbackid;
	}

	public void setFeedbackid(String feedbackid) {
		this.feedbackid = feedbackid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getEpicid() {
		return epicid;
	}

	public void setEpicid(String epicid) {
		this.epicid = epicid;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getAssembly() {
		return assembly;
	}

	public void setAssembly(String assembly) {
		this.assembly = assembly;
	}

	public String getParliment() {
		return parliment;
	}

	public void setParliment(String parliment) {
		this.parliment = parliment;
	}

   
}