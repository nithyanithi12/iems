package com.ideas2it.iems.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.Project;


/**
 * Program to perform CRUD on project Database 
 *
 * @version	1.0
 * @date	14/09/2019
 * @author	Dilli Babu
 */
@Repository
public interface ProjectDao  extends JpaRepository<Project, Integer> {}
    
    
    /**
     * Method to Create new Project in the Project Table
     *
     * @param project Project object that has to be created 
     * @return projectId- id for newly created project 
     * <p>
     * @throws ApplicationException a custom Exception that has been thrown to
     * calling method during the following scenarios
     *
     * <i>OptimisticLockException</i>  when another transaction using the same 
     *     entity to commit changes
     * <i>JDBCConnectionException</i>  problem while connecting with
     *     the database due to improper setup
     * <i>HibernateException</i>  other possible hibernate exception while 
     *     creating and fetching data
     * <i>SessionException</i>  when trying to close session that doesn't exist
     * <i>PersistenceException</i>  when trying to create an id that already exist
     * <p>
     *
    public int createProject(Project project) throws ApplicationException {
        Session session = DatabaseUtil.getSession().openSession();
       	Transaction transaction = session.beginTransaction();
        try {
            session.save(project);
            transaction.commit();
        } catch (OptimisticLockException ex) {
            transaction.rollback();
            throw new ApplicationException("Server Busy! try after Sometimes!");
        } catch(JDBCConnectionException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
                + project.getProjectId() +" not saved Error in Server ");
        } catch(HibernateException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
                + project.getProjectId() +" not saved error while processing");
        } catch(PersistenceException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
                + project.getClientId() +" not saved Id already Exist");
        } finally {
            try {
                session.close();
            } catch (SessionException ex) { 
                throw new ApplicationException("No Session Exist");
            }
        }
        return project.getId();
    }
    
    /**
     * Method to update an existing project in the Project table
     *
     * @param project project details that has to be updated
     * <p>
     * @throws ApplicationException a custom Exception that has been thrown to
     * calling method during the following scenarios
     *
     * <i>OptimisticLockException</i>  when another transaction using the same 
     *     entity to commit changes
     * <i>JDBCConnectionException</i>  problem while connecting with
     *     the database due to improper setup
     * <i>HibernateException</i>  other possible hibernate exception while 
     *     creating and fetching data
     * <i>SessionException</i>  when trying to close session that doesn't exist
     * <p>
     *
    public void updateProject(Project project) throws ApplicationException {
        Session session = DatabaseUtil.getSession().openSession();
       	Transaction transaction = session.beginTransaction();
        try {
            session.update(project);
            transaction.commit();
        } catch(OptimisticLockException ex) {
            transaction.rollback();
            throw new ApplicationException("Server Busy! try after Sometimes!");
        } catch(JDBCConnectionException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
                + project.getProjectId() +" not Updated Error in Server ");
        } catch(LazyInitializationException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
                + project.getProjectId() +"not Updated error in connection ");
        } catch(HibernateException ex) {
            transaction.rollback();
            throw new ApplicationException("Project " + project.getProjectId() 
                + " not Updated error during processing");
        } catch (NullPointerException ex) {
            throw new ApplicationException("ProjectId Doesn't Exist!!!!!");
        } finally {
            try {
                session.close();
            } catch (SessionException ex) { 
                throw new ApplicationException("No Session Exist");
            }
        }
   }
   
    /**
     * Method to Remove an existing project from the Project table
     *
     * @param projectId projects's id that has been used to remove its 
     * associated data from database
     * <p>
     * @throws ApplicationException a custom Exception that has been thrown to
     * calling method during the following scenarios
     *
     * <i>OptimisticLockException</i>  when another transaction using the same 
     *     entity to commit changes
     * <i>JDBCConnectionException</i>  problem while connecting with
     *     the database due to improper setup
     * <i>HibernateException</i>  other possible hibernate exception while 
     *     creating and fetching data
     * <i>SessionException</i>  when trying to close session that doesn't exist
     * <p>
     *
    public void removeProject(int projectId) throws ApplicationException {
        Project project = null;
        Session session = DatabaseUtil.getSession().openSession();
      	Transaction transaction = session.beginTransaction();
        try {
            project = (Project)session.get(Project.class, projectId);
            session.delete(project);
            transaction.commit();
        } catch(OptimisticLockException ex) {
            transaction.rollback();
            throw new ApplicationException("Server Busy! try after Sometimes!");
        } catch(JDBCConnectionException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
                + project.getProjectId() +" not removed Error in Server " 
                + "Connection");
        } catch(LazyInitializationException ex) {
            transaction.rollback();
            throw new ApplicationException("Project Detail for Id " 
               + project.getProjectId() +" not removed error in connection " 
               + "Session");
        } catch(HibernateException ex) {
            transaction.rollback();
            throw new ApplicationException("Project " + projectId 
                + " was not removed error during processing");
        } catch (NullPointerException ex) {
            throw new ApplicationException("ProjectId Doesn't Exist!!!!!");
        } finally {
            try {
                session.close();
            } catch (SessionException ex) { 
                throw new ApplicationException("No Session Exist");
            }
        }
   }
   
    /**
     * Method to get particular project detail from project table by id
     *
     * @param projectId id to get project detail
     * @return project- Project object for the given id
     * <p>
     * @throws ApplicationException a custom Exception that has been thrown to
     * calling method during the following scenarios
     *
     * <i>OptimisticLockException</i>  when another transaction using the same 
     *     entity to commit changes
     * <i>JDBCConnectionException</i>  problem while connecting with
     *     the database due to improper setup
     * <i>HibernateException</i>  other possible hibernate exception while 
     *     creating and fetching data
     * <i>SessionException</i>  when trying to close session that doesn't exist
     * <p>
     *
    public Project retrieveProjectById(int requiredProject) 
            throws ApplicationException {
        Project project = null;
        Session session = DatabaseUtil.getSession().openSession();
        try {
            project = (Project)session.get(Project.class, requiredProject);
        } catch(OptimisticLockException ex) {
            throw new ApplicationException("Server Busy! try after Sometimes!");
        } catch(JDBCConnectionException ex) {
            throw new ApplicationException("Error in getting data from Database"
                + " for project Id" + project.getProjectId() +" error in" 
                + " connectiing to Server");
        } catch(LazyInitializationException ex) {
            throw new ApplicationException("Error in getting data from Database" 
                + " for project Id" + project.getProjectId() +" error in" 
                + " connection Session");
        } catch(HibernateException ex) {
            throw new ApplicationException("Error in getting data from Database" 
                + "for project Id" + requiredProject + " Try again");
        } catch (NullPointerException ex) {
            throw new ApplicationException("ProjectId Doesn't Exist!!!!!");
        } finally {
            try {
                session.close();
            } catch (SessionException ex) { 
                throw new ApplicationException("No Session Exist");
            }
        }
        return project;
    }
    
    /**
     * Method get all the project details from database 
     *
     * @return projects- list of all projects from project table
     * <p>
     * @throws ApplicationException a custom Exception that has been thrown to
     * calling method during the following scenarios
     *
     * <i>OptimisticLockException</i>  when another transaction using the same 
     *     entity to commit changes
     * <i>JDBCConnectionException</i>  problem while connecting with
     *     the database due to improper setup
     * <i>HibernateException</i>  other possible hibernate exception while 
     *     creating and fetching data
     * <i>SessionException</i>  when trying to close session that doesn't exist
     * <p>
     *
    public List<Project> retrieveProjects() throws ApplicationException {
        List<Project> projects = new ArrayList<Project>();
        Session session = DatabaseUtil.getSession().openSession();
        try {
            Query query = session.createQuery("FROM Project");
            projects = query.list();
        } catch (OptimisticLockException ex) {
            throw new ApplicationException("Server Busy! try after Sometimes!");
        } finally {
            try {
                session.close();
            } catch (SessionException ex) { 
                throw new ApplicationException("No Session Exist");
            }
        }
        return projects;
    }
}*/
