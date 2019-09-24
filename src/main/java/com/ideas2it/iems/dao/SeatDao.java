/**
 * 
 */
package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.Seat;

/**
 * Program to perform CRUD operation on employee Database 
 *
 * @version 1.0
 * @date    14/09/2019
 * @author  Dilli Babu
 */

@Repository
public interface SeatDao extends JpaRepository<Seat, String> {
    /**
    public void assignemployee(@Param("id") String id, @Param("employeeId") int employeeId,
            @Param("status") boolean status);*/

}
