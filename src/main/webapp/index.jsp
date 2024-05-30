<%@ page import="com.app.controller.CustomerController" %>
<%@ page import="com.app.entity.Customer" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-12">
            <table class="table table-hover">
                <tbody>
                <thead>
                <tr>
                    <th>#Id</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Salary</th>
                    <th>Remove Student</th>
                    <th>Update Student</th>
                </tr>
                </thead>
                </tbody>
                <%
                    List<Customer> allCustomers = new CustomerController().findAllCustomer();
                    for(Customer c: allCustomers){
                %>
                <tbody>
                <tr>
                    <td><%=c.getId() %></td>
                    <td><%=c.getName() %></td>
                    <td><%=c.getAddress() %></td>
                    <td><%=c.getSalary() %></td>
                    <td>
                        <a class="btn btn-danger">Delete</a>
                    </td>
                    <td>
                        <a href="editCustomer.jsp?id=<%=c.getId()%>" class="btn btn-success">Update</a>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>

            </table>
        </div>
    </div>
</div>


<%@include file="footer.jsp" %>
</body>
</html>
