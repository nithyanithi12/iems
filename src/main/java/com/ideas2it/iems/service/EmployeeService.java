package com.ideas2it.iems.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.EmployeeDao;
import com.ideas2it.iems.model.DocumentName;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.EmployeeEvent;
import com.ideas2it.iems.model.Event;
import com.ideas2it.iems.util.CompanyUtil;


/**
 * Program to perform logical CRUD operation with Employee Object 
 *
 * @version 1.0
 * @date    14/09/2019
 * @author  Dilli Babu
 */
@Service 
public class EmployeeService {
    @Autowired
    EmployeeDao employeeDao;
    @Autowired
    private DocumentService documentService;
    EmployeeEventService employeeEventService;
    @Autowired 
    EventService eventService;
    
    public Date fetchDate(){
        return Date.valueOf(LocalDate.now());
    }    
    /**
     * Method to create a new employee 
     *
     * @param employee Employee object that has to be created
     * @return id- generated id for created employee
     * @that has been thrown by called method
     */
    public int addEmployee(Employee employee) {
        return (employeeDao.save(employee)).getId();
    }

    /**
     * Method to get particular employee detail by id
     *
     * @param employeeId id to get employee detail
     * @return employee- Employee object for the given id
     * @that has been thrown by called method
     */
    public Employee getEmployeeById(int id) {
        int age;
        int experience;
        System.out.println("yyyyyyyyyyyyyyyyyyyyyyyyyyy");
        Employee employee = employeeDao.getOne(id);
        System.out.println(employee);
        if (null != employee) {

            /* calculating age value by calling util class differenceCalculator 
                   method */
            age = CompanyUtil.differenceCalculator(employee.getDob());
            
            /* calculating experience value by calling util class 
                   differenceCalculator method */
            experience = CompanyUtil.differenceCalculator(employee.getDoj());
            employee.setAge(age);
            employee.setExperience(experience);
        }
        return employee;
    }

    /**
     * Method to Update an Existing employee 
     *
     * @param employee employee details that has to be updated
     * @that has been thrown by called method
     */
    public void modifyEmployee(Employee employee) {
        System.out.println(employee);

        employeeDao.save(employee);
    }

    /**
     * Method to remove particular employee detail by id
     *
     * @param employeeId id to remove an associated employee detail
     * @that has been thrown by called method
     */
    public void deleteEmployee(int id) {
        Employee employee = getEmployeeById(id);
        employee.setStatus(false);
        employeeDao.save(employee);
    }

    /**
     * Method to get all employee details
     *
     * @return employees- list of employees of Employee type
     * @that has been thrown by called method
     */
    public List<Employee> getEmployees() {
        return employeeDao.findAll();
    }
    

    public List<DocumentName> getAllDocumentNames() {
        return (documentService.getAllDocumentNames()); 
    }

    public void registerEvent(EmployeeEvent employeeEvent) {
        employeeEventService.registerEvent(employeeEvent);
    }
    
    public List<Event> getUpcomingEvents(){
        return eventService.getUpcomingEvents();
    }
    
    public List<EmployeeEvent> showActivities(int id){
        return employeeEventService.showActivities(id);
    }
    
    public Event getEventById(int id) {
        return eventService.getEventById(id);
    }
    public EmployeeEvent getEmployeeEventById(int id) {
        return employeeEventService.getEmployeeEventById(id);
    }
}