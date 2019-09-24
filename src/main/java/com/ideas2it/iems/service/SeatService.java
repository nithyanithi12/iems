package com.ideas2it.iems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.SeatDao;
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
    SeatDao seatDao;
    
    public void assignSeatForEmployee(Seat seat) {
        seatDao.save(seat);
    }
    
    public List<Seat> getSeatDetails() {
        return seatDao.findAll();
    }
}
