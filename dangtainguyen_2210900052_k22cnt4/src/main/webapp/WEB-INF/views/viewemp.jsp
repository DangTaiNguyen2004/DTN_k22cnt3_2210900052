<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .table-container {
            margin: 0 auto;
            max-width: 80%;
        }
        .btn {
            text-decoration: none;
        }
        .btn-edit {
            color: #fff;
            background-color: #007bff;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 0.9rem;
        }
        .btn-delete {
            color: #fff;
            background-color: #dc3545;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 0.9rem;
        }
        .add-employee {
            display: block;
            text-align: center;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <h1>Danh Sach Bang Lai</h1>

    <div class="table-container">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Salary</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Score</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${list}">
                    <tr>
                        <td>${emp.id}</td>
                        <td>${emp.name}</td>
                        <td>${emp.salary}</td>
                        <td>${emp.designation}</td>
                        <td>${emp.email}</td>
                        <td>${emp.score}</td>
                        <td><a href="editemp/${emp.id}" class="btn btn-edit">Edit</a></td>
                        <td><a href="deleteemp/${emp.id}" class="btn btn-delete">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <a href="empform" class="btn btn-primary add-employee">Them Bang Lai</a>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
