package com.ideas2it.iems.model;




//import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Date;
import java.util.Calendar;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Set;
import java.util.ArrayList;
import java.util.HashSet;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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

@Table(name = "documents")
@Entity
public class Document  {
	@Column(name = "id")
	private Long id;
	
	@Column(name = "status",nullable = false)
	private boolean status;
	
	@Column(name = "document_name",nullable = false, length = 50)
	private String documentName;
	
	@Column(name = "created_date",nullable = false,updatable=false)
    @CreationTimestamp
	private LocalDateTime createdDate;
	
	@Column(name = "last_modified_date",nullable = true)
    @UpdateTimestamp
	private LocalDateTime lastModifiedDate;	
	
	@Column(name = "document_content")
	private  byte[] documentContent ;
	
	private List<DocumentName> documentNames = new ArrayList<>();	
	
	private Employee employee;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public boolean getStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getDocumentName() {
		return documentName;
	}
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
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
	public byte[] getDocumentContent() {
		return documentContent;
	}
	public void setDocumentContent(byte[] documentContent) {
		this.documentContent = documentContent;
	}
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name="document_document_name", joinColumns={@JoinColumn(referencedColumnName="id")}
     , inverseJoinColumns={@JoinColumn(referencedColumnName="id")})  
	public List<DocumentName> getDocumentNames() {
		return documentNames;
	}
	
	public void setDocumentNames(List<DocumentName> documentNames) {
		this.documentNames = documentNames;
	}
	
    @ManyToOne(cascade=CascadeType.ALL)  
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}	

}
