package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.Client;


/**
 * Program to perform CRUD operation on client Database 
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */
@Repository
public interface ClientDao extends JpaRepository<Client, Integer> {}
