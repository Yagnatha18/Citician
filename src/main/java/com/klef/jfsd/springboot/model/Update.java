package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "update_table")  
public class Update {

	 @Id
	 @Column(name = "update_id", length = 10, nullable = false, unique = true)
	 private String updateId;
	
    @Column(name = "subject", length = 100, nullable = false)
    private String subject;

    @Column(name = "area/constituency", length = 100, nullable = false)
    private String areaconstituency;

    @Column(name = "update_content", nullable = false)
    private String updateContent;
    
    @Column(name = "date", nullable = false)
    private String date;
    
    @Column(name = "remarks", length = 500)
    private String remarks;

	public String getUpdateId() {
		return updateId;
	}

	public void setUpdateId(String updateId) {
		this.updateId = updateId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getAreaconstituency() {
		return areaconstituency;
	}

	public void setAreaconstituency(String areaconstituency) {
		this.areaconstituency = areaconstituency;
	}

	public String getUpdateContent() {
		return updateContent;
	}

	public void setUpdateContent(String updateContent) {
		this.updateContent = updateContent;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

   

    
}
