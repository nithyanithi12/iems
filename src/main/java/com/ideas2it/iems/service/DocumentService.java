package com.ideas2it.iems.service;

import java.io.InputStream;
import java.util.List;

import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ideas2it.iems.dao.DocumentDao;
import com.ideas2it.iems.dao.EmployeeDao;
import com.ideas2it.iems.dao.EmployeeDocumentDao;
import com.ideas2it.iems.dao.QueryDao;
import com.ideas2it.iems.model.Document;
import com.ideas2it.iems.model.DocumentName;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.Query;

@Service
@Transactional
public class DocumentService  {	
	@Autowired
	private DocumentDao documentDao;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private EmployeeDocumentDao  employeeDocumentDao;
	@Autowired
	private EmployeeDao employeeDao;
	@Autowired
	private QueryDao queryDao;
	
	public byte[] convertDocumentToByte(Part filePart) throws Exception {  
        InputStream pdfFileBytes = filePart.getInputStream();  // to get the body of the request as binary data                
        final byte[] bytes = new byte[pdfFileBytes.available()];
        pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
 		return (bytes); 		
	}	   

    public void modifyEmployee(Employee employee) {
        employeeDao.save(employee);
    }
	
	public Employee getEmployeeById(int id) {
        return (employeeService.getEmployeeById(id));
	}
	public Query getQueryById(long id) {
		return (queryDao.getOne(id));		
	}
	
    public DocumentName addDocumetName(DocumentName DocumentName) {
        return (documentDao.save(DocumentName));
    }
    
    public List<DocumentName> getAllDocumentNames() {
    	return (employeeDocumentDao.findAll());	
    }
    
    public List<Query> getQueries() {
    	return (queryDao.findAll());
    }
    
	public void save(Document document) {		
		documentDao.save(document);
	}
	public void saveQueryById(Query query) {
		queryDao.save(query);
	}
	public List<Document> listAll() {
		return documentDao.findAll();
	}
	
	public Document get(long id) {
		return documentDao.findById(id).get();
	}
	
	public void delete(long id) {
		documentDao.deleteById(id);
	}
	public List<Employee> getEmployees() {
		return (employeeService.getEmployees());
		
	}

	
	
    public String authenticateUser(int id,String password) 
                                   throws Exception {
        String userType;
        Employee employee = employeeService.getEmployeeById(id);
        System.out.println(employee+"hjggggggggggggggggggggggggggggggg");
        System.out.println(employee.getId());
        System.out.println(employee.getMobileNumber());
        System.out.println(employee.getRole());
        if (null == employee) {
            userType = "inValidUser";
        } else if ( password.equals(employee.getMobileNumber())
                   && (employee.getRole().equals("Admin"))) {
            userType = "Admin";                                    
        } else if ( password.equals(employee.getMobileNumber()) 
               && (employee.getRole().equals("Employee"))) {
               userType = "Employee";
        } else {
               userType = "inValidPassword";
        }
               return userType;
        }

    }