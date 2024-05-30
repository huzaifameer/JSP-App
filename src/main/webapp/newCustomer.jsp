<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/30/2024
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-5">
    <div class="form-container">
        <form action="/save">
            <div class="form-row">
                <div class="form-group col-md-6 mt-4">
                    <label for="id">Customer ID</label>
                    <input class="form-control" type="text" name="id" id="id" placeholder="Enter Customer ID">
                </div>
                <div class="form-group col-md-6 mt-4">
                    <label for="name">Customer Name</label>
                    <input class="form-control" type="text" name="name" id="name" placeholder="Enter Customer Name">
                </div>
                <div class="form-group col-md-6 mt-4">
                    <label for="address">Customer Address</label>
                    <input class="form-control" type="text" name="address" id="address" placeholder="Enter Customer Address">
                </div>
                <div class="form-group col-md-6 mt-4">
                    <label for="salary">Customer Salary</label>
                    <input class="form-control" type="number" name="salary" id="salary" placeholder="Enter Customer Salary">
                </div>
                <div class="form-group col-12 mt-5">
                    <button type="submit" class="btn btn-primary btn-custom btn-block">Save Customer</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</body>
</html>
