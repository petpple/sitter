<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>fsitter-header</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/library/animate/animate.min.css" rel="stylesheet">
    <link href="/library/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
</head>

<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="index" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>Kiwi</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index" class="nav-item nav-link active">긴급요청 서비스</a>
                <a href="#" class="nav-item nav-link">방문 서비스</a>
                <a href="fsitterPetSitterList#" class="nav-item nav-link">위탁 서비스</a>
                <a href="#" class="nav-item nav-link">FAQ</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="fsitterMyInfo" class="dropdown-item">내정보 변경</a>
                        <a href="sample" class="dropdown-item">계좌 변경</a>
                        <a href="fsitterMyPet" class="dropdown-item">내 펫 관리</a>
                         <a href="sample" class="dropdown-item">탈퇴하기</a>
                          <a href="fsitterMyProfileUpdate" class="dropdown-item">내 프로필 변경</a>
                    </div>
                </div>
                <a href="#" class="nav-item nav-link">로그아웃</a>
            </div>
        </div>
    </nav>
    <%
    	session = request.getSession();
//     	out.print("임시회원 코드 : " + session.getAttribute("temId") + "<br>");
    %>
    <!-- Navbar End -->
</body>

</html>