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
 * Program to get and set address attributes for client and employee entities
 * 
 * @author ubuntu
 * @version 1.0
 */

@Entity  
@Table(name = "address")
public class Address {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @OneToOne(targetEntity = Employee.class, mappedBy = "address", cascade = CascadeType.ALL)
    private Employee employee;
    
    @Column(name = "pincode")
    private int pincode;
    
    @Column(name = "city")
    private String city;
    
    @OneToOne(targetEntity = Client.class, mappedBy = "address", cascade = CascadeType.ALL)
    private Client client;
    
    @Column(name = "door_no")
    private String doorNo;
    
    @Column(name = "locality")
    private String locality;
    
    @Column(name = "state")
    private String state;
    
    @Column(name = "street")
    private String street;

    
    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getDoorNo() {
        return doorNo;
    }

    public void setDoorNo(String doorNo) {
        this.doorNo = doorNo;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Override
    public String toString() {
        return "Address [id=" + id + ", employee=" + employee + ", pincode=" + pincode + ", city=" + city + ", client="
                + client + ", doorNo=" + doorNo + ", locality=" + locality + ", state=" + state + ", street=" + street
                + "]";
    }
    
}