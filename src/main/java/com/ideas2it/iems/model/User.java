/**
 * 
 */
package com.ideas2it.iems.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Entity class for user data Manipulation
 * <p>
 *   It has a scope to access Employee entity
 * <p>
 * 
 * @author  Dilli Babu
 * @version 1.0
 *
 */

@Entity  
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @Column(name = "password")
    private String password;
    
    @Column(name = "role")
    private String role;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "employee_id", unique = true)
    private Employee employee;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

}