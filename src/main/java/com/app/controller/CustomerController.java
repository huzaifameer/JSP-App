package com.app.controller;

import com.app.db.HibernateUtil;
import com.app.entity.Customer;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CustomerController {
    public boolean saveCustomer(Customer customer){
        try (Session session = HibernateUtil.getSession()) {
            Transaction transaction = session.beginTransaction();
            session.save(customer);
            transaction.commit();
        }
        return true;
    }
    public boolean updateCustomer(Customer customer){
        return false;
    }
    public boolean deleteCustomer(long id){
        return false;
    }
    public Customer findCustomer(long id){
        return null;
    }
    public List<Customer> findAllCustomer(){
        return null;
    }
}
