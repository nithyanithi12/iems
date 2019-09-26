package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ideas2it.iems.model.Query;

public interface QueryDao extends JpaRepository<Query, Long> {

}
