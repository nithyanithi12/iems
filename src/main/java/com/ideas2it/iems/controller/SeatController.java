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

import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.EmployeeInfo;
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
        
        /**
         * Method to assign Employee for selected seat
         *
         * @param request  HttpServletRequest object that contains user's request
         * @param response passing HttpServletResponse to send response for user's
         *                 request
         * @return- model jsp page to display entire seat layout buy calling displayLayout
         *          method with updated seat details.
         * @throws ServletException when servlet fails to handle the request
         * @throws IOException      when servlet fails to handle input/output for the
         *                          request
         */
        @RequestMapping("/assign")
        public ModelAndView assignEmployee(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {
            String seatNo = request.getParameter("seatNo");
            int employeeId = Integer.parseInt(request.getParameter("employeeId"));
            Seat seat = new Seat();
            seat.setSeatNo(seatNo);
            seatService.assignSeatForEmployee(seat, employeeId);
            return displayLayout();
        }
        
        /**
         * Method to remove Employee from assigned seat
         *
         * @param request  HttpServletRequest object that contains user's request
         * @param response passing HttpServletResponse to send response for user's
         *                 request
         * @return- model jsp page to display entire seat layout buy calling displayLayout
         *          method with updated seat details.
         * @throws ServletException when servlet fails to handle the request
         * @throws IOException      when servlet fails to handle input/output for the
         *                          request
         */
        @RequestMapping("/removeEmployeeFromSeat")
        public ModelAndView removeEmployeeFromSeat(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException  {
            String seatNo = request.getParameter("deleteSeatNo");
            seatService.removeEmployeeFromSeat(seatNo);
            return displayLayout();
        }
        
        /**
         * Method to view details of an assigned employee Employee in a selected seat
         *
         * @param request  HttpServletRequest object that contains user's request
         * @param response passing HttpServletResponse to send response for user's
         *                 request
         * @return- model jsp page that displays details of an assigned employee
         * @throws ServletException when servlet fails to handle the request
         * @throws IOException when servlet fails to handle input/output for the
         *                          request
         */
        @RequestMapping("/viewEmployee")
        public ModelAndView viewEmployee(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException  {
            int employeeId = Integer.parseInt(request.getParameter("employeeid"));
            Employee employee= seatService.getEmployeeDetail(employeeId);
            ModelAndView model = new ModelAndView("employeeDisplay");
            model.addObject("employee", employee);
            return model;
        }
        
        /**
         * Method to view the entire layout of seats
         *
         * @param request  HttpServletRequest object that contains user's request
         * @param response passing HttpServletResponse to send response for user's
         *                 request
         * @return- model jsp page that displays details of an assigned employee
         * @throws ServletException when servlet fails to handle the request
         * @throws IOException when servlet fails to handle input/output for the
         *                          request
         */
        @RequestMapping("/displayLayout")
        public ModelAndView displayLayout() {
            List<EmployeeInfo> employeeInfos = new ArrayList(); 
            List<Seat> seats= seatService.getSeatDetails();
            List<Employee> employees = unAssignedEmployees();
            for(Employee employee : employees) {
                EmployeeInfo employeeInfo = new EmployeeInfo();
                employeeInfo.setEmployeeId(employee.getId());
                employeeInfo.setEmployeeName(employee.getName());
                employeeInfos.add(employeeInfo);
            }
            ModelAndView model = new ModelAndView("seatLayout");
            model.addObject("seats", seats);
            model.addObject("employeeInfos", employeeInfos);
            return model;
        }

        /**
         * Method to get list of unassigned employees 
         * @return list of employees who are unsigned
         */
        public List<Employee> unAssignedEmployees() {
            return seatService.getUnassignedEmployees();            
            
        }
}
