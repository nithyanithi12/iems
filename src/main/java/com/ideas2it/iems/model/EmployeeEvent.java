package com.ideas2it.iems.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee_event")
public class EmployeeEvent {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "employee_id")
	private int employeeId;
	
    @Column(name = "event_id")
	private int eventId;
	
	@Column(name="register_date", nullable=false)
	private Date registerDate;
	
	@Column(name="action", nullable=false, length=50)
	private String action;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


    public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	} 
	
	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	
	public String toString() {
		return employeeId+"\t"+eventId+"\t"+registerDate+"\t"+action;
	}

}