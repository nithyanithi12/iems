package com.ideas2it.iems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.EmployeeEventDAO;
import com.ideas2it.iems.model.EmployeeEvent;

@Service
public class EmployeeEventService {

	@Autowired
	EmployeeEventDAO employeeEventDao;
	
    public void registerEvent(EmployeeEvent employeeEvent) {
		 employeeEventDao.save(employeeEvent);
    }
    
    public EmployeeEvent getEmployeeEventById(int id) {
    	return employeeEventDao.getOne(id);
    }
    public List<EmployeeEvent> showActivities(int id){
    	return employeeEventDao.showActivities(id);
    }
    
    public List<EmployeeEvent> getParticipants(int id){
    	return employeeEventDao.getParticipants(id);
    }
}