package com.ideas2it.iems.model;

import com.ideas2it.iems.model.Document;

//import java.time.LocalDate;
import java.time.LocalDateTime;
//import java.util.Date;
//import java.util.Calendar;
//import java.sql.Date;
//import java.sql.Time;
//import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.CascadeType;
import javax.persistence.Column;
//import org.springframework.data.annotation.CreatedDate;
//import org.springframework.data.annotation.LastModifiedDate;
//import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Table(name = "queries")
@Entity
public class Query {
	@Column(name = "id")
	private Long id;

	@Column(name = "reason")
	private String reason;
	
	@Column(name = "status")
	private boolean status;
	
	@Column(name = "created_date")
    @CreationTimestamp
	private LocalDateTime createdDate;
	
	@Column(name = "last_modified_date")
    @UpdateTimestamp
	private LocalDateTime lastModifiedDate;

	@Column(name = "document_id")
	private String documentId ;
	
	private Employee employee;

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LocalDateTime getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDateTime createdDate) {
		this.createdDate = createdDate;
	}

	public LocalDateTime getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(LocalDateTime lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}	
	
    @ManyToOne(cascade=CascadeType.ALL)  
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getDocumentId() {
		return documentId;
	}

	public void setDocumentId(String documentId) {
		this.documentId = documentId;
	}	
	
}
