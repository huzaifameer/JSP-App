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
                <thead>
                <tr>
                    <th>#Id</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Salary</th>
                    <th>Remove Student</th>
                    <th>Update Student</th>
                </tr>
                <tr>
                    <td>1001</td>
                    <td>Nimal</td>
                    <td>Colombo</td>
                    <td>250000</td>
                    <td>
                        <button class="btn btn-danger">Delete</button>
                    </td>
                    <td>
                        <button class="btn btn-success">Update</button>
                    </td>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>


<%@include file="footer.jsp" %>
</body>
</html>
