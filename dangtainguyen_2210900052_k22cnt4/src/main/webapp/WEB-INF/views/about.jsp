<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu hệ thống</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<!-- Thanh điều hướng -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">QL Bằng Lái Xe</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Trang chủ</a></li>
                <li class="nav-item"><a class="nav-link active" href="about">Giới thiệu</a></li>
                
            </ul>
        </div>
    </div>
</nav>

<!-- Nội dung chính -->
<div class="container mt-5">
    <h2 class="text-center">Hệ Thống Quản Lý Bằng Lái Xe</h2>
    <p class="text-center text-muted">Giúp quản lý thông tin đăng ký, cấp mới và gia hạn bằng lái xe một cách nhanh chóng và hiệu quả.</p>

    <div class="row mt-4">
        <div class="col-md-6">
            <img src="${pageContext.request.contextPath}/webapp/resources/images/Phu_hieu_canh_sat_giao_thong.png" alt="Logo">
        </div>
        <div class="col-md-6">
            <h3>Chức năng chính</h3>
            <ul>
                <li>Đăng ký cấp mới, gia hạn và đổi bằng lái xe</li>
                <li>Tra cứu thông tin bằng lái</li>
                <li>Quản lý hồ sơ người lái xe</li>
                <li>Hỗ trợ xử lý vi phạm giao thông</li>
                <li>Báo cáo thống kê chi tiết</li>
            </ul>
        </div>
    </div>

    <!-- Thông tin liên hệ -->
    <div class="text-center mt-5">
        <h4>Liên hệ với chúng tôi</h4>
        <p>Email: support@qlbanglaixe.vn | Hotline: 1900 1234</p>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3 mt-5">
    &copy; 2025 Hệ thống Quản Lý Bằng Lái Xe. All Rights Reserved.
</footer>

 <img src="${pageContext.request.contextPath}/resources/images/Phu_hieu_canh_sat_giao_thong.png" alt="Logo">
</body>
</html>
