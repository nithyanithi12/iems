package com.ideas2it.iems.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.EmployeeEvent;
import com.ideas2it.iems.model.Address;
import com.ideas2it.iems.model.Document;
import com.ideas2it.iems.model.DocumentName;
import com.ideas2it.iems.service.EmployeeService;



/**
 * Program to perform CRUD operation based on user choice in web Application
 * for Employee module
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */
@Controller
public class EmployeeController {
    @Autowired 
    private EmployeeService employeeService;
    
    @RequestMapping(value = "/employee")     
    public ModelAndView employeePage() {
        ModelAndView model = new ModelAndView("employee");
        return model;
    }
       
    @RequestMapping(value = "/getActivities")     
    public ModelAndView activityPage(HttpServletRequest request) {
    	return new ModelAndView("activity","events",employeeService.getUpcomingEvents());
    }
           
    @RequestMapping(value = "/createEmployeeRedirect")     
    public ModelAndView createEmployeeRedirect() {
        ModelAndView model = new ModelAndView("createEmployee");
        return model;
    }
    
    
    @RequestMapping(value = "/displayAllEmployeeRedirect")     
    public ModelAndView disaplayAllEmployeeRedirect() {
        ModelAndView model = new ModelAndView("displayAllEmployeeRedirect");
        return model;
    }
    
    @RequestMapping(value="/register-event", method= RequestMethod.POST)
    public ModelAndView registerEvent(HttpServletRequest request) {
    	EmployeeEvent employeeEvent = new EmployeeEvent();
    	employeeEvent.setEmployeeId(Integer.parseInt(request.getSession(false).getAttribute("employeeId").toString()));
    	employeeEvent.setEventId(Integer.parseInt(request.getParameter("id")));
    	employeeEvent.setRegisterDate(employeeService.fetchDate());
    	employeeEvent.setAction(request.getParameter("action"));
    	employeeService.registerEvent(employeeEvent);
    	return new ModelAndView("main");    	
    }
    
    /**
     * Method to set Employee object to ModelAndView object for creating/updating
     * an employee
     *
     * @param request HttpServletRequest object that contains user's request
     * @param response HttpServletResponse object to send response for user's 
     *        request
     * @return- model jsp page that has been shown after creation/updation of 
     *          Employee
     * @throws ServletException when servlet fails to handle post method request
     * @throws IOException when servlet fails to handle input/output for post
     *        method request
     */
    @RequestMapping(value = "/setEmployeeDetails")     
    public ModelAndView setEmployeeDetails(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        ModelAndView model = new ModelAndView();
        String employeeId = request.getParameter("id");
        int id;
            Address address = new Address();
            Employee employee = new Employee();
            employee.setName(request.getParameter("name"));
            employee.setDob(request.getParameter("dob"));
            employee.setGender(request.getParameter("gender"));
            employee.setIceNumber(request.getParameter("iceNumber"));
            employee.setDoj(request.getParameter("doj"));
            employee.setSalary(Integer.parseInt(request.getParameter("salary")));
            employee.setRole(request.getParameter("role"));
            employee.setStatus(true);

            employee.setBloodGroup(request.getParameter("bloodGroup"));
            employee.setMobileNumber(request.getParameter("mobileNumber"));
            employee.setEmail(request.getParameter("email"));
            address.setDoorNo(request.getParameter("doorNo"));
            address.setStreet(request.getParameter("street"));
            address.setLocality(request.getParameter("locality"));
            address.setCity(request.getParameter("city"));
            address.setState(request.getParameter("state"));
            address.setPincode(Integer.parseInt(request.getParameter("pincode")));
            employee.setAddress(address);
            if (employeeId == null) {
                model.setViewName("employeeRegistration");
                id = employeeService.addEmployee(employee);
                model.addObject("id", id);
            } else {
                model.setViewName("employeeUpdation");
                employee.setId(Integer.parseInt(employeeId));
                employeeService.modifyEmployee(employee);
                model.addObject("name", employee.getName());
            }
        return model;
    }
    
    /**
     * Method to call new employee creation page with employee object
     *
     * @param request HttpServletRequest object that contains user's request
     * @param response HttpServletResponse object to send response for user's 
     *        request
     * @return- model jsp page to create new employee
     * @throws ServletException when servlet fails to handle post method request
     * @throws IOException when servlet fails to handle input/output for post
     *        method request
     */
    @RequestMapping(value = "/newEmployee")     
    public ModelAndView newEmployee(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        Employee employee = new Employee();
        ModelAndView model = new ModelAndView("createEmployee");
        model.addObject("employee", employee);
        return model;
    }
    
    /**
     * Method to display particular employee data by using employee id 
     *
     * @param request HttpServletRequest object that contains user's request
     * @param response passing HttpServletResponse to send response for user's 
     *        request
     * @return- model jsp page to display an employee information
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException when servlet fails to handle input/output for the
     *         request
     */
    @RequestMapping(value = "/displayEmployee")     
    public ModelAndView displayEmployee(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView("employeeDisplay");
            Employee employee = employeeService.getEmployeeById(id);
            model.addObject("employee", employee);
    		List<Document> documents = employee.getDocuments();
            model.addObject("documents", documents);
        return model;
    }

    /**
     * Method to remove particular employee data by using employee id 
     *
     * @param request HttpServletRequest object that contains user's request
     * @param response HttpServletResponse object to send response for user's 
     *        request
     * @return- model jsp page that has been shown after removing an employee
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException when servlet fails to handle input/output for the
     *        request
     */
    @RequestMapping(value = "/removeEmployee")     
    public ModelAndView removeEmployee(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView("removeEmployeeResult");
            employeeService.deleteEmployee(id);
            model.addObject("id", id);
        
        return model;
    }
    
    /**
     * Method to display particular employee data by using employee id to update 
     *
     * @param request HttpServletRequest object that contains user's request
     * @param response passing HttpServletResponse to send response for user's 
     *        request
     * @return- model jsp page to display particular employee's detail to update
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException when servlet fails to handle input/output for the
     *         request
     */
    @RequestMapping(value = "/displayEmployeeToUpdate")     
    public ModelAndView displayEmployeeToUpdate(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView("employeeUpdateDisplay");
            Employee employee = employeeService.getEmployeeById(id);
            List <Document> documents = employee.getDocuments();
         	model.addObject("documents", documents); 
            model.addObject("employee", employee);
            List <DocumentName> documentNames = employeeService.getAllDocumentNames();
        	model.addObject("documentNames", documentNames);        
        return model;
    }
    
    /**
     * Method to display all employee data that exists
     *
     * @param request HttpServletRequest object that contains user's request
     * @param response passing HttpServletResponse to send response for user's 
     *        request
     * @return- model jsp page that to display employees detail
     * @throws ServletException when servlet fails to handle the request
     * @throws IOException when servlet fails to handle input/output for the
     *         request
     */
    @RequestMapping(value = "/displayEmployees")     
    public ModelAndView displayEmployees(HttpServletRequest request, 
            HttpServletResponse response) throws ServletException, IOException {
        
        List<Employee> employees = null;
        ModelAndView model = new ModelAndView("displayAllEmployee");
            employees = employeeService.getEmployees();
            model.addObject("employees", employees);
        
        return model;
    }
    
    @RequestMapping(value = "/exit")     
    public ModelAndView exit(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        ModelAndView model = new ModelAndView("main");
        return model;
    }
	
	@RequestMapping("/showmyactivities")
	public ModelAndView showActivities(HttpServletRequest request){
		ModelAndView model = new ModelAndView("employeeactivities");
		int id = Integer.parseInt(request.getSession(false).getAttribute("employeeId").toString());
		List<EmployeeEvent> activities = employeeService.showActivities(id);
		model.addObject("activities", activities);
		return model;
	}
	
	@RequestMapping("/get-event-detail")
	public ModelAndView getEventDetail(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("employeeactivities");
	    int eventId = Integer.parseInt(request.getParameter("eventId"));
	    int id = Integer.parseInt(request.getParameter("id"));
	    model.addObject("event", employeeService.getEventById(eventId));
	    model.addObject("activity", employeeService.getEmployeeEventById(id));
	    return model;
    }
}
	