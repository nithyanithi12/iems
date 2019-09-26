package com.ideas2it.iems.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ideas2it.iems.dao.EventDAO;
import com.ideas2it.iems.exception.RecordNotFoundException;
import com.ideas2it.iems.model.EmployeeEvent;
import com.ideas2it.iems.model.Event;

@Service
public class EventService {
	
	@Autowired
	EventDAO eventDAO;
	
	@Autowired
	EmployeeEventService employeeEventService;

    public void createOrUpdateEvent(Event event) throws RecordNotFoundException {
		eventDAO.save(event);
    }
    
    public Event getEventById(int id) {
        return eventDAO.getOne(id);
    }
    
    public List<Event> getUpcomingEvents(){
    	boolean status = true;
    	return eventDAO.getUpcomingEvents(Date.valueOf(LocalDate.now()), status);
    }
    
	public List<Event> getPastEvents(){
		boolean status = true;
		return eventDAO.getPastEvents(Date.valueOf(LocalDate.now()), status);
	}
	
	public List<Event> getAllEvents() {
        return eventDAO.findAll();
    }
    
    public void deleteEvent(int id) throws RecordNotFoundException {
		eventDAO.deleteEvent(id);
	}

    public List<EmployeeEvent> getParticipants(int id){
    	return employeeEventService.getParticipants(id);
    }
    
    public EmployeeEvent getEmployeeEventById(int id) {
    	return employeeEventService.getEmployeeEventById(id);
    }
}