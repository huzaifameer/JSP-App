package com.app.servelet;

import com.app.controller.CustomerController;
import com.app.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/save")
public class CustomerSaveServelet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String salary = req.getParameter("salary");

        Customer customer = new Customer(
                Long.parseLong(id),name,address,Double.parseDouble(salary)
        );
        System.out.println("Customer : "+customer);
        if(new CustomerController().saveCustomer(customer)){
            System.out.println("Customer "+name+" saved...!");
            resp.sendRedirect("/newCustomer.jsp");
        }else{
            System.out.println("Theres an Error........!");
        }
    }
}
