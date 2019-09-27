package com.ideas2it.iems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.SeatDao;
import com.ideas2it.iems.dao.SeatRepository;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.Seat;

/**
 * Program to perform logical seat allocation operation with seat Object 
 *
 * @version 1.0
 * @date    14/09/2019
 * @author  Dilli Babu
 */

@Service
public class SeatService {

    @Autowired
    EmployeeService employeeService;
    @Autowired
    SeatRepository seatRepository;
    @Autowired
    SeatDao seatDao;
    
    /**
     * Method to get assign employee into selected seat
     *
     * @param employeeId id of an employee to be added
     * @param seat seat object to which employee should be added
     */
    public void assignSeatForEmployee(Seat seat, int employeeId) {
        Employee employee = employeeService.getEmployeeById(employeeId);
        seat.setEmployee(employee);
        seatRepository.save(seat);
    }
    
    /**
     * Method to get assigned employee's details of selected seat
     *
     * @param employeeId id to get employee detail     
     *  @return employee- Employee object for the given id
     */
    public Employee getEmployeeDetail(int employeeId) {
        return employeeService.getEmployeeById(employeeId);
    }
    
    /**
     * Method to remove assigned employee's details from selected seat
     *
     * @param seatNo seat number whose details have to be removed
     */
    public void removeEmployeeFromSeat(String seatNo) {
        seatDao.removeEmployeeBySeatNo(seatNo);
    }
    
    /**
     * Method to get all seat details from Seat table
     *
     * @return List of seat detail
     */
    public List<Seat> getSeatDetails() {
        return seatRepository.findAll();
    }
    
    /**
     * Method to get all seat details from Seat table
     *
     * @return List of seat detail
     */
    public List<Employee> getUnassignedEmployees() {
        return seatDao.getUnassignedEmployees();
    }
}
