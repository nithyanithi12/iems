/**
 * 
 */
package com.ideas2it.iems.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;  
import javax.persistence.Table;


/**
 * Entity class to assign and change seat for active employees
 * @author Dilli Babu S
 * @version 1.0
 *
 */

@Entity  
@Table(name = "seat")
public class Seat {

    @Id
    @Column(name = "id")
    private String id;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "employee_id", unique = true)
    private Employee employee;
    
    @Column(name = "status")
    private boolean status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}