<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>fsitterPetSitterList</title>
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
<link rel="stylesheet" href="/css/fsitter/fsitterPetSitterList.css">
<!-- <link rel="stylesheet" href="/css/main.css"> -->

<!-- datepicker -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<!--  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/css/fsitter/fsitterMyPet.css">
<link rel="stylesheet" href="/css/fsitter/vsitterSvc.css">
<link rel="stylesheet" href="/css/main.css">
<style>

	.location_div{
		width:350px; background-color:white !important; border-radius:2px;z-index: 100;
		position: absolute;
		top:70px;
		left:12px;
		
	}
	.loc_detail {
		height:40px; padding:10px; vertical-algin:middle;
	}
	
	.loc_detail:hover{
		background-color:#ccc2ba;
	}
</style>


<script type="text/javascript">
	$(document).ready(function() {
						$.datepicker.setDefaults($.datepicker.regional['ko']); 
				        $( "#startDate" ).datepicker({
				             changeMonth: true, 
				             changeYear: true,
				             nextText: '?????? ???',
				             prevText: '?????? ???', 
				             dayNames: ['?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????'],
				             dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'], 
				             monthNamesShort: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
				             monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
				             dateFormat: "yy/mm/dd",
				             minDate: 0,                       // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
				             onClose: function( selectedDate ) {    
				                  //?????????(startDate) datepicker??? ?????????
				                  //?????????(endDate)??? ?????????????????? ?????? ??????(minDate)??? ????????? ???????????? ??????
				                 $("#endDate").datepicker( "option", "minDate", selectedDate );
				             }    
				
				        });
				        $( "#endDate" ).datepicker({
				             changeMonth: true, 
				             changeYear: true,
				             nextText: '?????? ???',
				             prevText: '?????? ???', 
				             dayNames: ['?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????'],
				             dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'], 
				             monthNamesShort: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
				             monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'],
				             dateFormat: "yy/mm/dd",
				             minDate:0,
				             maxDate: 90,                       // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
				             onClose: function( selectedDate ) {    
				                 // ?????????(endDate) datepicker??? ?????????
				                 // ?????????(startDate)??? ?????????????????? ?????? ??????(maxDate)??? ????????? ???????????? ??????
				                 $("#startDate").datepicker( "option", "maxDate", selectedDate );
				             }    
				
				        });    

						$(".location_div").css('display','none');
						$("#location").change(function(){
							$(".location_div").css('display','inline');
						});
						
						$(".loc_detail").click(function(){
							$("#location").val($(this).children('span').text());
							$(".location_div").css('display','none');
						})
						
					});
</script>

</head>


<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
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
					<form class="form">
						<div class="row box_miInfo">
							<div class="col-md-6 inline" style="position: relative;">
								<label for="location" class="form-label h2_font">????????? ???????????? ?????????????</label>
								<input type="text" class="form-control shadow-sm" id="location" 
								style="width:350px;" placeholder="???/???/??? ?????? ex)?????????">
								<div class="shadow-sm location_div" id="test">
									<div class="loc_detail">
										<span id="loc1">??????????????? ????????? ?????????</span><br>
									</div>
									<div class="loc_detail">
										<span>??????????????? ????????? ??????1???</span><br>
									</div>
									<div class="loc_detail">
										<span>??????????????? ????????? ??????2???</span><br>
									</div>
									<div class="loc_detail">
										<span>??????????????? ????????? ??????3???</span><br>
									</div>
								</div>
							</div>
							<div class="col-md-6 inline">
								<div class="row">
									<div>
									<label for="location" class="col-auto form-label h2_font" style="margin-left:-15px">????????? ????????? ????????????????</label>
									</div>
									<input type="text" class="col-auto form-control shadow-sm" id="startDate" style="width:200px;">
									<span class="col-auto">~ </span>
									<input type="text" class="col-auto form-control shadow-sm" id="endDate" style="width:200px;">
								</div>
							</div>
						</div>
					</form>
					<div class="border-bottom shadow" style="height:2px; margin-top:100px;margin-bottom:100px;">
				   </div>
				   
				   <div>
				   	<div class="sitterList">
				   		 <div class="sitterImg"> <!-- carousel ?????? -->
   							<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
							  <div class="carousel-indicators">
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
							    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
						    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
							  </div>
							  <div class="carousel-inner">
							    <div class="carousel-item  active">
								    <div class="sitterImg">
								      <img src="/images/sitter/2022102780036_0.jpg" class="" alt="...">
								     </div>
							    </div>
							    <div class="carousel-item">
								      <div class="sitterImg">
									      <img src="/images/sitter/designtwoply-project093-3.jpg" class="" alt="...">
									     </div>
							    </div>
							    <div class="carousel-item">
								      <div class="sitterImg">
									      <img src="/images/sitter/designtwoply0000.png" class="" alt="...">
									   </div>
							    </div>
							  </div>
							  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
							    <span class="visually-hidden">Previous</span>
							  </button>
							  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							    <span class="carousel-control-next-icon" aria-hidden="true"></span>
							    <span class="visually-hidden">Next</span>
							  </button>
							</div> <!--carouesl ???  -->
   						</div>  <!--sitter IMg  -->
   						<a href=""  class="sitterAtag">
   							
   							<div class="locAndTitleDiv">
   								<p style="font-size: 14px; letter-spacing: -0.1px; color: rgb(94, 99, 109);">?????? ????????? ?????????
   								</p>
   								<p style="font-size: 20px; letter-spacing: -0.2px; color: rgb(56, 60, 72); margin-top: 5px;">???????????? ???????????? ?????????????
   								</p>
   							</div>
   							<div class="underDiv">
	   							<div class="underTitle">
	   								<div style="display: flex; align-items: center; flex-direction: row; margin-bottom: 10px;">
	   									<div style="width:140px; display: flex; flex-direction: row; justify-content: space-between; over">
	   										<div class="starImg" style="display: flex; flex: 1 1 0%; justify-content: space-between;">
	   											<img src="/images/sitter/pngwing.com.png">
	   											<img src="/images/sitter/pngwing.com.png">
	   											<img src="/images/sitter/pngwing.com.png">
	   											<img src="/images/sitter/pngwing.com.png">
	   											<img src="/images/sitter/pngwing.com.png">
	   										</div>
	   									</div>
	   									<div style="displplay:flex; margin-left:10px;">
		   										<span class="mb_font">?????? (5)</span>
		   									</div>
	   									</div>
	   								</div>
	   								<div style="text-align: center; margin-bottom:30px;">
	   									<p style="font-size:13px; font-weight:bold;">?????? </p>
	   									<div class="gradeImg">
	   											<img src="/images/sitter/????????????.jfif">
	   											<!--?????? image  -->
	   									</div>
	   								</div>
	   								
	   							</div>
	   							
   							</div>
   						</a>
   						
   						
   						
   						
				   	</div> <!--sitterList  -->
				   	<div>
				   		<button class="btn btn-light" style="width:100%">?????????</button>
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