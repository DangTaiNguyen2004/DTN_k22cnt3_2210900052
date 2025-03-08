<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Bằng Lái Xe Máy</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007bff;
            color: white;
            padding: 15px 20px;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #f8f9fa;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            padding: 8px 15px;
            border: 1px solid transparent;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s, border-color 0.3s;
        }
        nav a:hover {
            background-color: #007bff;
            color: white;
            border-color: #0056b3;
        }
        main {
            text-align: center;
            padding: 50px 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Quản Lý Bằng Lái Xe Máy</h1>
    </header>

    <nav>
        
        <a href="login">Đăng nhập</a>
        <a href="register">Đăng ký</a>
       
    </nav>
	
    <main>
        <p>Chào mừng bạn đến với Hệ thống Quản lý Bằng Lái Xe Máy. </p>
    </main>
</body>
</html>
