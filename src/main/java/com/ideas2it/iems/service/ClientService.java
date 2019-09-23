package com.ideas2it.iems.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideas2it.iems.dao.ClientDao;
import com.ideas2it.iems.model.Client;
import com.ideas2it.iems.model.Project;


/**
 * Program to perform logical CRUD operation with client Object 
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */
@Service 
public class ClientService {
    @Autowired
    ClientDao clientDao;
    
    /**
     * Method to create a new client 
     *
     * @param client- Client object that has to be created
     * @return id for created Client
     * @throws ApplicationException- Exception that has been thrown by called 
     *         method
     */
    public int createClient(Client client) {
        return (clientDao.save(client)).getId();

    }
    
    /**
     * Method to Update an Existing client 
     *
     * @param client- client details that has to be updated
     * @throws ApplicationException- Exception that has been thrown by called
     *         method
     */
    public void updateClient(Client client) {
        clientDao.save(client);
    }

    /**
     * Method to get particular client detail by id
     *
     * @param clientId- id to get client detail
     * @return client- Client object for the given id
     * @throws ApplicationException- Exception that has been thrown by called 
     *         method
     */
    public Client getClientById(int id) {
        return clientDao.getOne(id);
    }
    


    /**
     * Method to remove particular client detail by id
     *
     * @param clientId- id to remove an associated client detail
     * @throws ApplicationException- Exception that has been thrown by called 
     *         method
     */
    public void removeClient(int id) {
        Client client = getClientById(id);
        client.setStatus(false);
        clientDao.save(client);
    }
    
    /**
     * Method to add project for created client
     *
     * @param clientId- id to which project needs to be added
     * @param projects- projects needs to be added for a client
     * @throws ApplicationException- Exception that has been thrown by called 
     *         method
     */
    public void addProject(int id, Project project) {
        Client client = getClientById(id);
        Set <Project> projects = client.getProjects();
        projects.add(project);
        client.setProjects(projects);
        clientDao.save(client);
    }
    
    /**
     * Method to get all client details
     *
     * @return list of clients of client type
     * @that has been thrown by called method
     */
    public List<Client> getClients() {
        return clientDao.findAll();
    }
}
