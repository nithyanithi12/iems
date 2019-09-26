package com.ideas2it.iems.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.iems.exception.RecordNotFoundException;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.EmployeeEvent;
import com.ideas2it.iems.model.Event;
import com.ideas2it.iems.service.EventService;

@Controller
public class EventController {
	
	@Autowired
	EventService eventService;
	
	/*@RequestMapping("/")
	public ModelAndView welcome() {
	    return getEvents();
	}*/
	
	@RequestMapping("/new")
	public ModelAndView newEvent() {
	    return new ModelAndView("create-event");
	}
	
	
	@RequestMapping("/create-event")
	public ModelAndView createEvent(HttpServletRequest request) {
	    try {
			eventService.createOrUpdateEvent(setEventDetails(request));
			return getEvents();
	    } catch(RecordNotFoundException exception) {
	    	System.out.println(exception);
	    	return new ModelAndView("error");
	    }
	}
	
	private Event setEventDetails(HttpServletRequest request) {
		Event event = new Event();
		event.setName(request.getParameter("name"));
        Employee employee = new Employee();
		employee.setId(Integer.parseInt(request.getParameter("organiser")));
		event.setOrganiser(employee);
		event.setTime(request.getParameter("time"));
		event.setDescription(request.getParameter("description"));
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    Date startDate = null;
	    Date endDate = null;
		try {
			startDate = convertUtilToSql(formatter.parse(request.getParameter("startdate")));
			endDate =  convertUtilToSql(formatter.parse(request.getParameter("enddate")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    event.setStartDate(startDate);
	    event.setEndDate(endDate);
		event.setStatus(true);
	    return event;
    }
	
	@RequestMapping(value= "/get-event", method=RequestMethod.GET)
	public ModelAndView getEvent(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
	    return new ModelAndView("update-event", "event", eventService.getEventById(id));
	}
	
	@RequestMapping("/update-event")
	public ModelAndView updateEvent(HttpServletRequest request) {
	    try {
	    	Event event = setEventDetails(request);
	    	event.setId(Integer.parseInt(request.getParameter("id")));
			eventService.createOrUpdateEvent(event);
			return getEvents();
	    } catch(RecordNotFoundException exception) {
	    	return new ModelAndView("error");
	    }
	}
	
    private static java.sql.Date convertUtilToSql(java.util.Date uDate) {
        java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
    }
    
	@RequestMapping("/display")
	public ModelAndView getEvents() {
		ModelAndView model = new ModelAndView("display-event");
		model.addObject("upcomingEvents", eventService.getUpcomingEvents());
	    model.addObject("pastEvents", eventService.getPastEvents());
		return model;

	}	
	
	@RequestMapping("/get-all-events")
	public ModelAndView getAllEvents() {
		return new ModelAndView("display-event", "events", eventService.getAllEvents());
	}
	
	@RequestMapping(value= "delete-event", method= RequestMethod.GET)
	public ModelAndView deleteEvent(HttpServletRequest request) throws RecordNotFoundException {
		int id = Integer.parseInt(request.getParameter("id"));
		eventService.deleteEvent(id);
	    return getEvents();
	}
	
	@RequestMapping("/getParticipants")
	public ModelAndView getParticipants(HttpServletRequest request) {
		List<EmployeeEvent> employees = eventService.getParticipants(Integer.parseInt(request.getParameter("id")));
		return new ModelAndView("viewparticipants", "employees", employees);
	}
}