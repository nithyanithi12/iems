package com.ideas2it.iems.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.Event;

@Repository
public interface EventDAO
    extends JpaRepository<Event, Integer> {
	
	@Query("select e from Event e where e.endDate>=(:date) and e.status=(:status)")
    public List<Event> getUpcomingEvents(@Param("date")Date date, @Param("status")boolean status);
	
	@Query("select e from Event e where e.endDate<(:date) and e.status=(:status)")
    public List<Event> getPastEvents(@Param("date")Date date, @Param("status")boolean status);
	
	@Query("update Event e set e.status=(false) where e.id=(:id)")
	public void deleteEvent(@Param("id")int id);
}