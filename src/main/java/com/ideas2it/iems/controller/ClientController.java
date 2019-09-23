package com.ideas2it.iems.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ideas2it.iems.model.Address;
import com.ideas2it.iems.model.Client;
import com.ideas2it.iems.model.Project;
import com.ideas2it.iems.service.ClientService;

/**
 * Program to perform CRUD operation based on user choice in web Application for
 * Client module
 *
 * @version 1.0
 * @date 14/09/2019
 * @author Dilli Babu
 */
@Controller
public class ClientController {
    @Autowired
    private ClientService clientService;

    @RequestMapping(value = "/client")     
    public ModelAndView clientPage(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        ModelAndView model = new ModelAndView("client");
        return model;
    }
    
    /**
     * Method to set details Client object
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return client- Client object that has to be added/updated
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/setClientDetails")
    private Client setClientDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Client client = new Client();
        Address address = new Address();
        client.setName(request.getParameter("name"));
        client.setMobileNumber(request.getParameter("mobileNumber"));
        client.setEmail(request.getParameter("email"));
        address.setDoorNo(request.getParameter("doorNo"));
        address.setStreet(request.getParameter("street"));
        address.setLocality(request.getParameter("locality"));
        address.setCity(request.getParameter("city"));
        address.setState(request.getParameter("state"));
        address.setPincode(Integer.parseInt(request.getParameter("pincode")));
        client.setAddress(address);
        return client;
    }

    /**
     * Method to add new client
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page that has been shown after creation of new client
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/createClient")
    public ModelAndView createClient(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Client client = setClientDetails(request, response);
        ModelAndView model = new ModelAndView();
        int id = clientService.createClient(client);
        model.setViewName("clientRegistration");
        model.addObject("id", id);

        return model;
    }

    /**
     * Method to set Client object into ModelAndView object
     *
     * @param request  HttpServletRequest object that contains user's request
     * @param response HttpServletResponse object to send response for user's
     *                 request
     * @return model- jsp page to create new client
     * @throws ServletException- when servlet fails to handle post method request
     * @throws IOException-      when servlet fails to handle input/output for post
     *                           method request
     */
    @RequestMapping(value = "/newClient")
    public ModelAndView newClient(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Client client = new Client();
        ModelAndView model = new ModelAndView("createClient");
        model.addObject("client", client);
        return model;
    }

    /**
     * Method to add project details for created client
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page that has been shown after adding project for client
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/addProject")
    public ModelAndView addProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ModelAndView model = new ModelAndView();
        Project project = new Project();
        int id = Integer.parseInt(request.getParameter("id"));
        project.setName(request.getParameter("name"));
        project.setDescription(request.getParameter("description"));
        project.setStartDate(request.getParameter("startDate"));
        project.setEndDate(request.getParameter("endDate"));
        clientService.addProject(id, project);
        model.setViewName("cliProCreateResult");
        model.addObject("id", id);

        return model;
    }

    /**
     * Method redirect's to add project details for created client
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page that has been shown to add project for client
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/addProjectRedirect")
    public ModelAndView addProjectRedirect(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Client client = new Client();
        ModelAndView model = new ModelAndView();
        int id = Integer.parseInt(request.getParameter("id"));
        client = clientService.getClientById(id);
        model.setViewName("clientAddProject");
        model.addObject("client", client);
        return model;
    }

    /**
     * Method to display particular client data
     *
     * @param request  passing HttpServletRequest with user's servlet request
     * @param response passing HttpServletResponse to send response for user's
     *                 request
     * @return- model jsp page to display client details
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/displayClient")
    public ModelAndView displayClient(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        Client client = clientService.getClientById(id);
        model.setViewName("clientDisplay");
        model.addObject("client", client);
        return model;
    }

    /**
     * Method to update a particular client information
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return- model jsp page to display client update result
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/updateClient")
    public ModelAndView updateClient(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Client client = setClientDetails(request, response);
        ModelAndView model = new ModelAndView();
        clientService.updateClient(client);
        model.setViewName("clientUpdation");
        model.addObject("name", client.getName());
        return model;
    }

    /**
     * Method to remove particular client data by using client id
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return model- jsp page for client removal result
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/removeClient")
    public ModelAndView removeClient(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        clientService.removeClient(id);
        model.setViewName("clientRemoval");
        model.addObject("id", id);
        return model;
    }

    /**
     * Method to display particular client data by using client id to update
     *
     * @param request-  passing HttpServletRequest with user's servlet request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return- model jsp page to display particular client's detail to update
     * @throws ServletException- when servlet fails to handle get method request
     * @throws IOException-      when servlet fails to handle input/output from get
     *                           and post method request
     */
    @RequestMapping(value = "/displayClientToUpdate")
    public ModelAndView displayClientToUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ModelAndView model = new ModelAndView();
        Client client = clientService.getClientById(id);
        model.setViewName("clientUpdateDisplay");
        model.addObject("client", client);
        return model;
    }

    /**
     * Method to display all client data
     *
     * @param request-  HttpServletRequest object that contains user's request
     * @param response- passing HttpServletResponse to send response for user's
     *                  request
     * @return- model jsp page that to display all clients detail
     * @throws ServletException- when servlet fails to handle the request
     * @throws IOException-      when servlet fails to handle input/output for the
     *                           request
     */
    @RequestMapping(value = "/displayClients")
    public ModelAndView displayClients(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Client> clients = null;
        ModelAndView model = new ModelAndView("displayAllClient");
        clients = clientService.getClients();
        model.addObject("clients", clients);
        return model;
    }
}
