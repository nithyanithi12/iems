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
 * Entity class to assign and change seat for active employees
 * @author Dilli Babu S
 * @version 1.0
 *
 */

@Entity  
@Table(name = "seat")
public class Seat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @Column(name = "seat_no")
    private String seatNo;
    
    @OneToOne(cascade=CascadeType.ALL)  
    private Employee employee;


    @Override
    public String toString() {
        return "Seat [id=" + id + ", seatNo=" + seatNo + ", employee=" + employee + "]";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSeatNo() {
        return seatNo;
    }

    public void setSeatNo(String seatNo) {
        this.seatNo = seatNo;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

  
}