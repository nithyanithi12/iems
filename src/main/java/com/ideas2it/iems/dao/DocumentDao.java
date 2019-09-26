package com.ideas2it.iems.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ideas2it.iems.model.Document;
import com.ideas2it.iems.model.DocumentName;

public interface DocumentDao extends JpaRepository<Document, Long> {

	DocumentName save(DocumentName documentName);

}
