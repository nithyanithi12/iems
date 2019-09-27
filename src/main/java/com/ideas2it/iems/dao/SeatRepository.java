/**
 * 
 */
package com.ideas2it.iems.dao;


import java.util.List;

import javax.persistence.QueryHint;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.Seat;

/**
 * Program to perform CRUD operation on employee Database 
 *
 * @version 1.0
 * @date    14/09/2019
 * @author  Dilli Babu
 */

@Repository
public interface SeatRepository extends JpaRepository<Seat, String> {
               

}
