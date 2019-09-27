package com.ideas2it.iems.service;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.ProjectDao;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.Project;
import com.ideas2it.iems.service.EmployeeService;

/**
 * Program to perform logical CRUD operation with Project Object
 *
 * @version 1.0
 * @date 14/09/2019
 * @author Dilli Babu
 */
@Service
public class ProjectService {
    @Autowired
    ProjectDao projectDao;
    @Autowired
    EmployeeService employeeService;

    /**
     * Method to create a new project
     *
     * @param project Project object that has to be created
     * @return id- generated id for created project
     * @throws ApplicationException that has been thrown by called method
     */
    public int createProject(Project project){
        return (projectDao.save(project)).getId();
    }

    /**
     * Method to Update an Exixting project
     *
     * @param project- project details that has to be updated
     * @throws ApplicationException that has been thrown by called method
     */
    public void updateProject(Project project){
        projectDao.save(project);
    }

    /**
     * Method to get particular project detail by id
     *
     * @param employeeId id to get employee detail
     * @return employee- Employee object for the given id
     * @throws ApplicationException that has been thrown by called method
     */
    public Project getProjectById(int id){
        return projectDao.getOne(id);
    }

    /**
     * Method to remove particular project detail by id
     *
     * @param id- id to remove an associated project detail
     * @throws ApplicationException that has been thrown by called method
     */
    public void removeProject(int id){
        Project project = getProjectById(id);
        project.setStatus(false);
        projectDao.save(project);
    }

    /**
     * Method to get particular employee detail by id
     *
     * @param employeeId- id to get employee detail
     * @return employee- Employee object for the given id
     * @throws ApplicationException that has been thrown by called method
     */
    public Employee getEmployeeData(int employeeId){
        return employeeService.getEmployeeById(employeeId);
    }

    /**
     * Method to add employee to the selected project
     *
     * @param employeeId- id of the employee to be added into project
     * 
     * @throws ApplicationException that has been thrown by called method
     */
    public void addEmployeeToProject(int id, int employeeId){
        Project project = getProjectById(id);
        Set<Employee> employees = project.getEmployees();
        Employee employee = getEmployeeData(employeeId);
        employees.add(employee);
        project.setEmployees(employees);
        updateProject(project);
    }

    /**
     * Method to remove employee from the selected project
     *
     * @param employeeId- id of the employee to be removed from selected project
     * @throws ApplicationException that has been thrown by called method
     */
    public void removeEmployeeFromProject(int id, int employeeId){
        Project project = getProjectById(id);
        Set<Employee> employees = project.getEmployees();
        Iterator<Employee> employeeIterator = employees.iterator();
        while (employeeIterator.hasNext()) {
            Employee employee = employeeIterator.next();
            if (employeeId == employee.getId()) {
                employeeIterator.remove();
            }
        }
        project.setEmployees(employees);
        updateProject(project);
    }

    /**
     * Method to get all project details
     *
     * @return list of projects of Project type
     * @throws ApplicationException that has been thrown by called method
     */
    public List<Project> getProjects() {
        return projectDao.findAll();
    }
}
