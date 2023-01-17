<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>sitter-header</title>
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
    
    <style type="text/css">
    
    	.hh2_font{
		color: #FE5C17;
		font-size: 22px;
		font-weight: bold;
	}
    
    </style>
    
    
    <script>

    // a  태그가 선택되면 active 속성이 부여된다.
	$(function () {
	
	    var url = window.location.pathname,
	
	    urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");  
	
	    $('a').each(function () {
	
	    	if (urlRegExp.test(this.href.replace(/\/$/, ''))) 
	   	 	{
	
	    	      $(this).addClass('active');
	
	    	}
	      });
	
	    });

</script>
    
</head>

<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top p-3" style="background-color:#ffe4cf">
        <a href="index" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><img alt="" src="/images/kiwi2.svg"> Kiwi</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="http://localhost:8093/sitter/sitterMain" class="nav-item nav-link">펫시터 메인</a>
                <a href="http://localhost:8093/sitter/sitterDiaryPetChoice" class="nav-item nav-link">긴급서비스</a>
                <a href="sitterDiaryForm" class="nav-item nav-link">일지</a>
                <a href="#" class="nav-item nav-link">마이페이지</a>
            </div>
            <a href="/logout" class="nav-item nav-link">로그아웃</a>
        </div>
    </nav>
    <%
    	session = request.getSession();
//     	out.print("임시회원 코드 : " + session.getAttribute("temId") + "<br>");
    %>
    <!-- Navbar End -->
</body>

</html>