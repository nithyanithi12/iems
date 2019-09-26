/**
 * 
 */
package com.ideas2it.iems.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


/**
 * Entity class for Employee data Manipulation
 * <p>
 *   It has a scope to access Address and Project entity for manipulating 
 *   addresss and project object.
 * <p>
 *
 * @author  Dilli Babu
 * @version 1.0
 */

@Entity  
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @OneToOne(targetEntity = Seat.class, mappedBy = "employee", cascade = CascadeType.ALL ,fetch = FetchType.EAGER)
    private Seat seat;
    
    @Column(name = "salary")
    private int salary;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="address_id")
    private Address address;
    
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "employee_project", joinColumns = { @JoinColumn
            (name = "employee_id") }, inverseJoinColumns = 
            { @JoinColumn(name = "project_id") })
    private Set<Project> employeeProjects;
    
    @Column(name = "blood_group")
    private String bloodGroup;
    
    @Column(name = "dob")
    private String dob;
    
    @Column(name = "doj")
    private String doj;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "gender")
    private String gender;
    
    @Column(name = "ice_number")
    private String iceNumber;
    
    @Column(name = "mobile_number")
    private String mobileNumber;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "role")
    private String role;

    @Column(name = "status")
    private boolean status;
    
    private int age;
    
    private int experience;
    
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @return the age
     */
    public int getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * @return the experience
     */
    public int getExperience() {
        return experience;
    }

    /**
     * @param experience the experience to set
     */
    public void setExperience(int experience) {
        this.experience = experience;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Set<Project> getEmployeeProjects() {
        return employeeProjects;
    }

    public void setEmployeeProjects(Set<Project> employeeProjects) {
        this.employeeProjects = employeeProjects;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIceNumber() {
        return iceNumber;
    }

    public void setIceNumber(String iceNumber) {
        this.iceNumber = iceNumber;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
}