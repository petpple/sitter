<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>fsitterMyInfo</title>
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
    
    <link rel="stylesheet" href="/css/fsitter/fsitterMyInfo.css">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <!--  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/fsitter/fsitterMyInfo.css">
	<link rel="stylesheet" href="/css/main.css">
	
    
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

	<div>
		<c:import url="header.jsp"></c:import>
	</div>

    <!-- ???????????? ?????? ?????? -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row justify-content-center">
            
                <div class="col-lg-7">
                    <div class="IMG1" >
				<img src="/images/fsitter/2.svg" class="svgImg2">
				<span class="font h_font">????????? ??????</span>
        	</div>
        	
        	<div class="box_miInfo">
	            <div class= "infoChange">
        			<div class="form-inline">
						<div class="form-group ">
							<label for="nickname">?????????</label><br>
						   	<input type="text" class="form-control" id="nickname" placeholder="?????????">
						 	<br><br>
							
						 	<label for="phone">?????????</label><br>
						   	<input type="text" class="form-control" id="phone" placeholder="01011112222">
						 	<br><br>
						 
						 	<label for="pw">????????? ??????????????? ??????????????????</label><br>
						   	<input type="text" class="form-control" id="pw" placeholder="16??? ????????? ??????????????????">
						 	<br><br>
						 
						 	<!-- ??????????????? ?????????????????? -->
						 	<label for="home">????????? ??????</label><br>
						   	<input type="text" class="form-control" id="home" placeholder="???) ????????? ????????? ?????????">
						 	<br><br>
						 	
						 	<label for="homeDetail">????????? ????????????</label><br>
						   	<input type="text" class="form-control" id="homeDetail" placeholder="???) 101??? 101???">
						 	<br><br>
						 	
						 	<label for="homeTaba">?????? ?????? ??????</label><br>
						 	<div class="radio">
						 		<label>
								    <input type="radio" name="myTaba" id="myTaba1" value="1">
								    ???, ??????????????????.&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
								</label>
								<label>
								 	<input type="radio" name="myTaba" id="myTaba2" value="2">
								    ?????????, ???????????? ????????????.
								</label> 	
							</div>
							<br><br>
							
							<label for="homeTaba">??????????????? ?????? ??????</label><br>
						 	<div class="radio">
						 		<label>
								    <input type="radio" name="homeTaba" id="homeTaba1" value="1">
								    ???, ???????????? ?????????.&emsp;&emsp;&emsp;&emsp;
								</label>
								<label>    
								    <input type="radio" name="homeTaba" id="homeTaba2" value="2">
								    ?????????, ???????????? ????????????.
								</label>    
							</div>
							<br><br>
							
						 	<label for="homeCate">????????? ??????</label>
						 	<br>
						 	<div class="radio">
						 		<label>
								    <input type="radio" name="homeCate" id="homeCate1" value="1">
								    ????????????&emsp;&emsp;
								</label>
								<label>    
								    <input type="radio" name="homeCate" id="homeCate2" value="2">
								    ?????????&emsp;&emsp;
								</label>
								<label>    
								    <input type="radio" name="homeCate" id="homeCate3" value="3">
								    ??????&emsp;&emsp;
								</label>
								<label>
								    <input type="radio" name="homeCate" id="homeCate4" value="4">
								    ????????????&emsp;&emsp;
								</label>
								<label>    
								    <input type="radio" name="homeCate" id="homeCate5" value="5">
								    ??????&emsp;&emsp;
								</label>
								<label>    
								    <input type="radio" name="homeCate" id="homeCate6" value="6">
								    ????????????
								</label>    
							</div>
						 	<br><br>
							
							<label for="homeCate">????????? ??????</label>
						 	<br>
						 	<div class="radio">
						 		<label>
								    <input type="radio" name="homeSize" id="homeSize1" value="1">
								    1~10???&ensp;
								</label>
								<label>    
								    <input type="radio" name="homeSize" id="homeSize2" value="2">
								    10~20???&ensp;
								</label>
								<label>     
								    <input type="radio" name="homeSize" id="homeSize3" value="3">
								    21~30???&ensp;
								</label>
								<label>     
								    <input type="radio" name="homeSize" id="homeSize4" value="4">
								    31~40???&ensp;
								</label>
								<label>     
								    <input type="radio" name="homeSize" id="homeSize5" value="5">
								    41~50???&ensp;
								</label>
								<label>     
								    <input type="radio" name="homeSize" id="homeSize6" value="6">
								    51~60???&ensp;
								</label>
								<label>     
								    <input type="radio" name="homeSize" id="homeSize7" value="7">
								    61??? ??????
								</label>    
							</div>
							<br><br>
							
						</div>	
						<div class="col text-center">
		                    <button type="button" class="but btn" style="background-color: #FE5C17; color: white;">????????????</button>
		                </div> 
							
					</div>
        		</div>
        	</div>
                </div>
            </div>
        </div>
    </div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>