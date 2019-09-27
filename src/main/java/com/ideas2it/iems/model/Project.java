/**
 * 
 */
package com.ideas2it.iems.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * Model class to represent project etity to perform CRUD operation. 
 * <p>
 * It has a  scope to access Employee and Client entity
 * </p>
 * 
 * @author  Dilli Babu
 * @version 1.0
 *
 */

@Entity  
@Table(name = "project")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client client;
        
    @Column(name = "end_date")
    private String endDate;
    
    @Column(name = "description")
    private String description;
        
    @Column(name = "name")
    private String name;
    
    @Column(name = "start_date")
    private String startDate;
    
    @ManyToMany(mappedBy = "employeeProjects")
    private Set<Employee> employees;

    @Column(name = "status")
    private boolean status;
    
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the client
     */
    public Client getClient() {
        return client;
    }

    /**
     * @param client the client to set
     */
    public void setClient(Client client) {
        this.client = client;
    }

    /**
     * @return the endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the employees
     */
    public Set<Employee> getEmployees() {
        return employees;
    }

    /**
     * @param employees the employees to set
     */
    public void setEmployees(Set<Employee> employees) {
        this.employees = employees;
    }
}