package com.ideas2it.iems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.EmployeeDao;
import com.ideas2it.iems.model.DocumentName;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.util.CompanyUtil;


/**
 * Program to perform logical CRUD operation with Employee Object 
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */
@Service 
public class EmployeeService {
    @Autowired
    EmployeeDao employeeDao;
    @Autowired
    private DocumentService documentService;
    
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
        Employee employee = employeeDao.getOne(id);
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
}
