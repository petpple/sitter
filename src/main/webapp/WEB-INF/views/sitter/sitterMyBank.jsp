<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/library/animate/animate.min.css" rel="stylesheet">
<link href="/library/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="/css/sitter/sitterMyBank.css">
<link rel="stylesheet" href="/css/main.css">


<script type="text/javascript">


</script>

</head>
<body>
	

	<div>
		<c:import url="header.jsp"></c:import>
	</div>


<!-- 여기다가 코드 작성 -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
	<div class="container" >
	<div class="row justify-content-center">
        
		
		<div class="col-md-7">
			<div class="IMG1" >
				<img src="/images/fsitter/2.svg" class="svgImg2">
				<span class="font h_font">계좌 변경</span>
        	</div>
        	
	        <div class="box_mibank">
	            <div class= "bank_change">
	                
	                <form class="form-inline">
	                <div class="form-group">
	    				<label for="changeAccount">예금주 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	    				<input type="text" class="form-control" id="changeAccount" placeholder="예금주를 입력하세요" >
	  				</div><br><br>
	  				
	  				<div class="form-group">
	    				<label for="changeAccount">은행 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	    				<input type="text" class="form-control" id="changeAccount" placeholder="은행을 입력하세요" >
	  				</div><br><br>
	  				
	  				<div class="form-group">
	    				<label for="changeAccount">계좌번호 : &nbsp; </label>
	    				<input type="text" class="form-control" id="changeAccount" placeholder="계좌번호를 입력하세요" >
	  				</div><br><br><br>
	  				</form>
	  				
	                <div>
	                	<div class="col text-center">
	                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;">변경하기</button>
	                	</div>  
					</div>
					
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>

<div>
		<c:import url="footer.jsp"></c:import>
	</div>

	<!-- JavaScript Libraries -->
	<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/library/wow/wow.min.js"></script>
	<script src="/library/easing/easing.min.js"></script>
	<script src="/library/waypoints/waypoints.min.js"></script>
	<script src="/library/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="/javascript/main.js"></script>
</body>
</html>