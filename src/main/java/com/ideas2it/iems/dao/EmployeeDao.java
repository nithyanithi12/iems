package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.Employee;


/**
 * Program to perform CRUD operation on employee Database 
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */

@Repository
public interface EmployeeDao extends JpaRepository<Employee,Integer> {}


   