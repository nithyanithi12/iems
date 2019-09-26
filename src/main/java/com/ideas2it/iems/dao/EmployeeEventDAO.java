package com.ideas2it.iems.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.EmployeeEvent;

@Repository
public interface EmployeeEventDAO
    extends JpaRepository<EmployeeEvent, Integer> {
		
		@Query("select e from EmployeeEvent e where e.employeeId=(:id)")
		public List<EmployeeEvent> showActivities(@Param("id")int id);
		
		@Query("select ee from EmployeeEvent ee where ee.eventId=(:id)")
		public List<EmployeeEvent> getParticipants(@Param("id")int id);
}