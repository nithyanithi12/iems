/**
 * 
 */
package com.ideas2it.iems.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.ideas2it.iems.model.Employee;


/**
 * Prgram to perform removal operation on seat table from database 
 * 
 * @author Dilli Babu s
 *
 */
@Repository
public class SeatDao {
    
    @PersistenceContext
    private EntityManager entityManager;    
    
    /**
     * Method to remove seat details from seat table
     *
     * @param seatNo seat number whose details have to be removed
     */
    public void removeEmployeeBySeatNo(String seatNo) { 
        Session session = entityManager.unwrap(Session.class);
        Transaction txn = session.beginTransaction();
        Query query = session.createQuery("delete from Seat s where s.seatNo =:seat").setParameter("seat",seatNo);        
        query.executeUpdate();
        txn.commit();
    }
    
    public List<Employee> getUnassignedEmployees() { 
        List<Employee> employees = new ArrayList();
        Session session = entityManager.unwrap(Session.class);
        Query query = session.createSQLQuery("select * from employee e left join seat s on e.id = s.employee_id where s.employee_id is null").addEntity("employee", Employee.class);    
         return query.list();
    }
}