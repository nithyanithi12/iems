package com.ideas2it.iems.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="event")
public class Event {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;	
	
	@Column(name="name", nullable=true, length=50)
    private String name;
	
	@OneToOne
	@JoinColumn(name = "organiser")
	private Employee organiser;

	@Column(name="start_date", nullable=true )
    private Date startDate;
	
	@Column(name="end_date", nullable=true )
    private Date endDate;
	
	@Column(name="time", nullable=true)
	private String time;
	
	@Column(name="description", nullable=true, length=150)
    private String description;
	
	@Column(name="status", nullable=true)
	private boolean status;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Employee getOrganiser() {
		return organiser;
	}

	public void setOrganiser(Employee organiser) {
	    this.organiser = organiser;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public void setStatus(boolean status){
		this.status = status;
    }
	
	public boolean getStatus(){
	    return status;
    }		
}