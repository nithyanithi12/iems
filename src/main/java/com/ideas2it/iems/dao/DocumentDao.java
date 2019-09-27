package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ideas2it.iems.model.Document;
import com.ideas2it.iems.model.DocumentName;

public interface DocumentDao extends JpaRepository<Document, Long> {

	DocumentName save(DocumentName documentName);

}
