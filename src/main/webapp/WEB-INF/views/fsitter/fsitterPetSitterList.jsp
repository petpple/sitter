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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/library/animate/animate.min.css" rel="stylesheet">
    <link href="/library/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/fsitter/fsitterPetSitterList.css">
    <!-- <link rel="stylesheet" href="/css/main.css"> -->
    
    <!-- datepicker -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
    <!--  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/css/fsitter/fsitterMyPet.css">
	<link rel="stylesheet" href="/css/main.css">

	 

<script type="text/javascript">

$(document).ready(function () {
    $.datepicker.monthpicker = {
    	maxDate: 0,
        closeText: '닫기',
        nextText : '다음 달',
        prevText : '이전 달',
        currentText : "오늘",
        changeMonth : true,
        changeYear : true,
        monthNames : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNamesShort : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
        dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
        weekHeader : "주",
        firstDay : 0,
        isRTL : false,
        showMonthAfterYear : true,
        yearSuffix : "년",
        showOn: 'both',
        // buttonText: "달력",
        showButtonPanel: false,
        dateFormat: 'yy-mm',          
        yearRange: "-10:+0",
};
      
$.datepicker.setDefaults($.datepicker.monthpicker);

      var datepicker_default = {
          showOn: 'both',
          buttonText: "달력",
          currentText: "이번달",
          changeMonth: true,
          changeYear: true,
          showButtonPanel: true,
          yearRange: 'c-99:c+99',
          showOtherMonths: true,
          selectOtherMonths: true
      }
      datepicker_default.closeText = "선택";
      datepicker_default.dateFormat = "yy-mm-dd";
      datepicker_default.onClose = function (dateText, inst) {
          var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
          var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
          var day = $("#ui-datepicker-div .ui-datepicker-day :selected").val();
          $(this).datepicker("option", "defaultDate", new Date(year, month, 1));
          $(this).datepicker('setDate', new Date(year, month, 1));
      }
      datepicker_default.beforeShow = function () {
          var selectDate = $("#sdate").val().split("-");
          var year = Number(selectDate[0]);
          var month = Number(selectDate[1]) - 1;
          var day = Number(selectDate[0]);
          $(this).datepicker("option", "defaultDate", new Date(year, month, 1));
      }
      $(".month_picker").datepicker(datepicker_default);
});

</script>
    
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

    <!-- 여기다가 코드 작성 -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-11 inline">
                
	                <form class="form ">
	                	<div class="box_miInfo">
	                		<div class="col-lg-4 inline">	
								<label for="location" class="form-label">어디에 사시나요?</label>
								<input type="text" class="form-control col-lg-2" id="location" placeholder="동 이름을 검색하세요 (예.역삼동)">
							
						
			
			        				<label for="when" class="form-label">언제 맡기시나요?</label>
			        				<input type="text"  id="datepicker" class="form-control">
					        		
					        		
					        
					         </div>   	  
								 		
								  
								 		<label for="datepicker" class="col-lg-2 col-form-label">-></label>
								 	<div class="form-group col-lg-5">  
								 		<input type="text"  id="datepicker2" class="form-control" style="margin-left: -20px;">
								 	</div>	
							           
							            <!-- 생년월일 datepicker  -->
										<script type="text/javascript">
											$("#datepicker").datepicker();
										</script>
							            <!-- 생년월일 datepicker  -->
										<script type="text/javascript">
											$("#datepicker2").datepicker();
										</script>
							    
							    
						    </div>
						</form>		   
							
						
                	
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>