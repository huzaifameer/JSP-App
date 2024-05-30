package com.app.servelet;

import com.app.controller.CustomerController;
import com.app.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class CustomerDeleteServelet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("id");

        if (new CustomerController().deleteCustomer(Long.parseLong(id))){
            System.out.println("Deleted Successfully........!");
            resp.sendRedirect("index.jsp");
        }else{
            System.out.println("Theres an Error....!");
        }
    }
}
