/**
 * 
 */
package com.ideas2it.iems.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.iems.model.Seat;
import com.ideas2it.iems.service.SeatService;

/**
 * Program to perform assigning seat for an employee
 *
 * @author  Dilli Babu
 * @version 1.0
 */

@Controller
public class SeatController {
        
        @Autowired
        private SeatService seatService;
        
        @RequestMapping("/assign")
        public void assignEmployee(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {
            String seatNo = request.getParameter("boxid");
            String rowNo = request.getParameter("rowid");
            String wingNo = request.getParameter("wingid");
            int employeeId = Integer.parseInt(request.getParameter("employeeId"));
            boolean status = true;
            Seat seat = new Seat();
            seat.setSeatNo(seatNo);
            seat.setRowNo(rowNo);
            seat.setWingNo(wingNo);
            seat.setStatus(status);
            seatService.assignSeatForEmployee(seat, employeeId);
            displayLayout();
        }
        
        @RequestMapping("/displayLayout")
        public ModelAndView displayLayout() {
            List<Seat> seats= seatService.getSeatDetails();
            ModelAndView model = new ModelAndView("seatLayout");
            model.addObject("seats", seats);
            return model;
        }

    }
