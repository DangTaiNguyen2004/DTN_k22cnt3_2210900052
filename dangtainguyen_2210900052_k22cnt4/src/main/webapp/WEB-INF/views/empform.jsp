<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Employee</title>
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
        .form-container {
            max-width: 500px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-save {
            display: block;
            width: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
        }
        .btn-save:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Them hoc Bang Lai</h1>

    <div class="form-container">
        <form:form method="post" action="save">
            <div class="mb-3">
                <label for="name" class="form-label">Ho va Ten</label>
                <form:input path="name" id="name" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="salary" class="form-label">Tuoi</label>
                <form:input path="salary" id="salary" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="designation" class="form-label">Chuc Danh</label>
                <form:input path="designation" id="designation" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="Email" class="form-label">Email</label>
                <form:input path="Email" id="Email" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="Score" class="form-label">Diem</label>
                <form:input path="Score" id="Score" class="form-control" />
            </div>
            <button type="submit" class="btn-save">Luu</button>
        </form:form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
