package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "issue_table")  
public class Issue {
    
	 @Id
	 @Column(name = "report_id", length = 10, nullable = false, unique = true)
	 private String reportId;
    
    @Column(name = "subject", length = 100, nullable = false)
    private String subject;
    
    @Column(name = "location", length = 100, nullable = false)
    private String location;
    
    @Column(name = "assembly", nullable = false)
    private String assembly;
    
    @Column(name = "parliment", nullable = false)
    private String parliment;
    
    @Column(name = "epicid", nullable = false)
    private String epicid;
    
    @Column(name = "issue", nullable = false)
    private String issue;
    
    @Column(name = "status", nullable = false)
    private String status;
    
    @Column(name = "remarks", nullable = false)
    private String remarks;

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
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

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getEpicid() {
		return epicid;
	}

	public void setEpicid(String epicid) {
		this.epicid = epicid;
	}

    

    
}
