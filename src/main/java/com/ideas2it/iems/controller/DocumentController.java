package com.ideas2it.iems.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.lang.String;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.iems.model.Document;
import com.ideas2it.iems.model.DocumentName;
import com.ideas2it.iems.model.Employee;
import com.ideas2it.iems.model.Query;
import com.ideas2it.iems.service.DocumentService;

/**
 * 
 * Program iems used to maintain Employee Details like personal information,Documents and 
 * assigning seats for Employee and also used to maintain client and Project Details
 * 
 * @author Viji.K
 * @since 19/09/2019
 * @version 1.0
 *
 */

@Controller
public class DocumentController {	
	@Autowired
	private DocumentService documentService;
		
	@RequestMapping(value="/show-document-form",method = RequestMethod.GET)
    public String showDocumentForm(Model model,HttpServletRequest request,  HttpServletResponse response) {
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
		List <Document> documents= employee.getDocuments();
        request.getSession().setAttribute("employee", employee);      
    	List <DocumentName> documentNames = documentService.getAllDocumentNames();
    	model.addAttribute("documentNames", documentNames);  
    	model.addAttribute("documents", documents);  
    	model.addAttribute("employee",employee);
        return "create-document";
    }	
	
	@RequestMapping(value="/add-document-name",method = RequestMethod.GET)
	public String addDocumentName(Model model,HttpServletRequest request,  HttpServletResponse response)  {
		String documentName = request.getParameter("documentName");
		DocumentName DocumentName = new DocumentName();
		DocumentName.setDocumentName(documentName);
		documentService.addDocumetName(DocumentName);
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
        List <Document> documents = employee.getDocuments();
     	model.addAttribute("documents", documents); 
        model.addAttribute("employee", employee);
        List <DocumentName> documentNames = documentService.getAllDocumentNames();
    	model.addAttribute("documentNames", documentNames);   
	    return "employeeUpdateDisplay";	
	}
    
	@RequestMapping(value="/create-document",method = RequestMethod.POST)
    public String createDocument(Model model,
        HttpServletRequest request,  HttpServletResponse response) throws IOException, ServletException {
        byte[] bytes = null;
        boolean isDocumentExist = false;
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
		List<Document> documents = employee.getDocuments();
		System.out.println(documents);		
		LocalDateTime now = LocalDateTime.now();  		
		Document newDocument = new Document();      
        final Part filePart = request.getPart("documentContent");       
        String documentName = request.getParameter("documentName");  
        for(Document document : documents) {
        	if((document.getDocumentName().equals(documentName)) && (document.getStatus())) {
        	     isDocumentExist = true;
        	    break;  	
        	}
        }
        try {
	        bytes = documentService.convertDocumentToByte(filePart);
		} catch (Exception e) {
			e.printStackTrace();
		}  
        if(!isDocumentExist) {
    	    newDocument.setDocumentName(documentName);
    	    newDocument.setDocumentContent(bytes);
    	    newDocument.setStatus(true);
    	    newDocument.setCreatedDate(now);
     		documents.add(newDocument);
     		employee.setDocuments(documents);
    		documentService.modifyEmployee(employee);	
        }  
		Employee employees = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
        List <Document> documentss = employee.getDocuments();
     	model.addAttribute("documents", documentss); 
        model.addAttribute("employee", employees);
        List <DocumentName> documentNames = documentService.getAllDocumentNames();
    	model.addAttribute("documentNames", documentNames); 
        return "employeeUpdateDisplay";
	}
	
	@RequestMapping(value="/update-document",method = RequestMethod.POST)
    public String updateDocument(Model model,
        HttpServletRequest request,  HttpServletResponse response) throws IOException, ServletException {
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("employeeId")));
		//Document document = documentService.get(Integer.parseInt(request.getParameter("id")));   
		long document_id = Long.parseLong(request.getParameter("id"));
		Document document = null;
		List<Document> documents = employee.getDocuments();
		System.out.println(documents);			
		for(Document employeeDocument : documents) {
		    if(employeeDocument.getId() == document_id) {
		    	document = employeeDocument; 	
		    }	
		}		
		LocalDateTime now = LocalDateTime.now();  		
        final Part filePart = request.getPart("documentContent");       
        byte[] bytes = null;
	    try {
	        bytes = documentService.convertDocumentToByte(filePart);
		} catch (Exception e) {
				e.printStackTrace();
		}           
 		document.setDocumentContent(bytes);
 		document.setLastModifiedDate(now);
 		documents.add(document);
 		employee.setDocuments(documents);
		documentService.modifyEmployee(employee);
		Employee employees = documentService.getEmployeeById(Integer.parseInt(request.getParameter("employeeId")));
        List <Document> documentss = employee.getDocuments();
     	model.addAttribute("documents", documentss); 
        model.addAttribute("employee", employees);
        List <DocumentName> documentNames = documentService.getAllDocumentNames();
    	model.addAttribute("documentNames", documentNames); 
        return "employeeUpdateDisplay";
    }			
	
	@RequestMapping(value="/delete-document",method = RequestMethod.POST)
    public String deleteDocument(Model model,
        HttpServletRequest request,  HttpServletResponse response) throws IOException, ServletException {
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("employeeId")));
		long document_id = Long.parseLong(request.getParameter("id"));
		Document document = null;
		List<Document> documents = employee.getDocuments();
		System.out.println(documents);			
		for(Document employeeDocument : documents) {
		    if(employeeDocument.getId() == document_id) {
		    	document = employeeDocument; 	
		    }	
		}		
 		document.setStatus(false);
 		documents.add(document);
 		employee.setDocuments(documents);
		documentService.modifyEmployee(employee);
		Employee employees = documentService.getEmployeeById(Integer.parseInt(request.getParameter("employeeId")));
        List <Document> documentss = employee.getDocuments();
     	model.addAttribute("documents", documentss); 
        model.addAttribute("employee", employees);
        List <DocumentName> documentNames = documentService.getAllDocumentNames();
    	model.addAttribute("documentNames", documentNames); 
        return "employeeUpdateDisplay";
	}					
	
	@RequestMapping(value="/read")
    public String showDocumentReadForm(Model model) {
        return "read-document";
    }	
	
	@RequestMapping(value="/read-document",method = RequestMethod.POST)
	public void readDocument(HttpServletRequest request, HttpServletResponse response) 
			                                    throws ServletException, IOException {
        String documentName = request.getParameter("id");
        Long id = Long.parseLong(request.getParameter("id"));
        ServletOutputStream servletOutputStream;
        response.setContentType("application/pdf"); 
        response.setHeader("Content-disposition","inline; filename="+documentName+".pdf" );
        servletOutputStream = response.getOutputStream();  
        Document document =  documentService.get(id);
        System.out.println(document);
        System.out.println(document.getDocumentContent());
	    servletOutputStream.write(document.getDocumentContent());
        servletOutputStream.flush();
        servletOutputStream.close();          
  }
 
	@RequestMapping(value="/document-query",method = RequestMethod.GET)
    public String raiseQuery(Model model,HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
		LocalDateTime now = LocalDateTime.now();  	
	    String reason = request.getParameter("message");
		//Document document = documentService.get(Integer.parseInt(request.getParameter("id")));  
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("employeeId")));
		List<Query> queries = employee.getQueries();
		Query query = new Query();
		query.setReason(reason);
		query.setCreatedDate(now);
		query.setDocumentId((String)request.getParameter("id"));
		query.setStatus(true);
		queries.add(query);
		employee.setQueries(queries);
		documentService.modifyEmployee(employee);
		List<Document> documents = employee.getDocuments();
		model.addAttribute("employee",employee);
		model.addAttribute("documents",documents);
		return "employeeDisplay";			
	}
	
	@RequestMapping(value="/show-notification-form")
    public String showNotification(Model model,HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Employee> employees = documentService.getEmployees();
	    model.addAttribute("employees",employees);
        return "show-notification";		       
	}
	
	@RequestMapping(value="/display-all-documents",method = RequestMethod.POST)
    public String displayAllDocuments(Model model,
        HttpServletRequest request,  HttpServletResponse response) throws IOException, ServletException {
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
		List<Document> documents = employee.getDocuments();
	    model.addAttribute("documents",documents);
        return "/display-all-documents";
	}			
	
	
	@RequestMapping(value="/show-all-document-queries")
    public String showAllDocumentQueries(Model model,HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Employee> employees = documentService.getEmployees();
	    model.addAttribute("employees",employees);
        return "show-all-document-queries";		       
	}
	
	@RequestMapping(value = "/changeQueryStatus",method= RequestMethod.POST)
	public String changeEmployeeQueryStatus(Model model,HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
		LocalDateTime lastModifiedDate = LocalDateTime.now();  	
		Query query = documentService.getQueryById(Long.parseLong(request.getParameter("id")));
		query.setStatus(false);
		query.setLastModifiedDate(lastModifiedDate);
		documentService.saveQueryById(query);
        List<Employee> employees = documentService.getEmployees();
	    model.addAttribute("employees",employees);
        return "show-notification";	
    }
	
	@RequestMapping(value = "/show-employee-query",method= RequestMethod.POST)
	public String showEmployeeQuery(Model model,HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
		List<Query> queries = employee.getQueries();
		model.addAttribute("queries",queries);
        return "show-employee-query";	
    }
	
	@RequestMapping(value = "/show-solved-query",method= RequestMethod.POST)
	public String showsolvedQuery(Model model,HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
		Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id")));
		List<Query> queries = employee.getQueries();
		model.addAttribute("queries",queries);
        return "show-solved-query";	
    }
		
	@RequestMapping("/12")
	public String viewHomePage(Model model) {
		List<Document> listDocuments = documentService.listAll();
		model.addAttribute("listProducts", listDocuments);		
		return "index";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("document") Document document) {
		documentService.save(document);	
		return "redirect:/";
	}
	
	@RequestMapping("/edit/{id}")
	public ModelAndView showEditProductPage(@PathVariable(name = "id") int id) {
		ModelAndView mav = new ModelAndView("edit_product");
		Document document = documentService.get(id);
		mav.addObject("document", document);		
		return mav;
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteProduct(@PathVariable(name = "id") int id) {
		documentService.delete(id);
		return "redirect:/";		
	}
	
    @RequestMapping(value = "/")     
    public ModelAndView mainPage() {
        ModelAndView model = new ModelAndView("loginPage");
        return model;
    }
	
    @RequestMapping(value = "/authenticateUser", method = RequestMethod.POST)
    public ModelAndView authenticateUser(HttpServletRequest request, 
        HttpServletResponse response)  throws ServletException, IOException { 
        ModelAndView model = new ModelAndView();
        try { 
            int id = (Integer.parseInt(request.getParameter("id")));
            String password = request.getParameter("password");
            String userType = documentService.authenticateUser(id,password);
            if (userType.equals("Admin")) {
               // request.getSession().setAttribute("id",id); 
                model.setViewName("main");
            } else if (userType.equals("Employee")) {
              //  request.getSession().setAttribute("id",id); 
                model.setViewName("employeeDisplay");
                Employee employee = documentService.getEmployeeById(Integer.parseInt(request.getParameter("id"))); 
        		List<Document> documents = employee.getDocuments();
                model.addObject("documents", documents);
               // request.getSession().setAttribute("employee",employee); 
                model.addObject("employee",employee);           
            } else {
                model.setViewName("loginPage");
                model.addObject("error","Invalid Username or password");
            }
            return model;
        } catch (Exception exception) {
            ModelAndView error = new ModelAndView("loginPage");
            error.addObject("error","Invalid Username or Password");
            return error; 
        } 
    }
    
    @RequestMapping(value = "/logoutUser")     
    public ModelAndView exit(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        ModelAndView model = new ModelAndView("loginPage");
        return model;
    }
}