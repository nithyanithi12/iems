package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ideas2it.iems.model.DocumentName;

public interface EmployeeDocumentDao extends JpaRepository<DocumentName, Long> {

}
