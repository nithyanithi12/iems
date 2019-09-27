package com.ideas2it.iems.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Entity class for client data Manipulation 
 * <p>
 *   It has a scope to access Address and Project entity for manipulating 
 *   addresss and project object.
 * <p>
 *
 * @author  Dilli Babu
 * @version 1.0
 */

@Entity  
@Table(name = "client")
public class Client {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="address_id")
    private Address address;
    
    @OneToMany(mappedBy = "client", cascade = CascadeType.ALL)
    private Set<Project> projects;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "mobile_number")
    private String mobileNumber; 
    
    @Column(name = "name")
    private String name;


    @Column(name = "status")
    private boolean status;
    
    public int getId() {
        return id;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Set<Project> getProjects() {
        return projects;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    

}