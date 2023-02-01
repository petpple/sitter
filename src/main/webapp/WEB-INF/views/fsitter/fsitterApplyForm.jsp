<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>sitter-sample</title>
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
    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- Template Javascript -->
    
    <link rel="stylesheet" href="/css/sitter/memberMain.css">
    <link rel="stylesheet"
	   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    <style type="text/css">
	/* .panel-heading {text-align: center;} */
	
	.container {
		margin-bottom: 20px;
	}
	.btn {
		background-color: #FE5C17;
		color: white;
		text-align: center;
		margin-bottom: 20px;
	}
	
	.sss_font{
		margin-top: 10px;
		font-size:13px;
		color: #FF8C5B;
	}
	
	.form-radio-label  {
		font-weight: 500;
	}
	
	#result,#nameResult {color: red; }
		
			.input-file-button{
	  padding: 6px 25px;
	  background-color:#FE5C17;
	  border-radius: 4px;
	  color: white;
	  cursor: pointer;
	  margin-top : 10px;
	  }
	  
	  .petProfile {
	   width:150px;
	   height:150px;
	   object-fit: cover;
	   border-radius:30px;
	   margin-bottom: 30px;
	   border: 2px solid #fffff;
	  }
	  
	</style>
	
    <script type="text/javascript">
	    $(function() { // 파일 업로드1
		    $('#img_select1').change(function() {
		       setImageFromFile(this, '#preview1');
		    });
		 });
		 //파일 업로드
		 function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		       var reader = new FileReader();
	
		       reader.onload = function(e) {
		          $(expression).attr('src', e.target.result);
		       }
		       reader.readAsDataURL(input.files[0]);
		    }
		 }
		 $(function() { // 파일 업로드2
			    $('#img_select2').change(function() {
			       setImageFromFile(this, '#preview2');
			    });
			 });
			 //파일 업로드
			 function setImageFromFile(input, expression) {
			    if (input.files && input.files[0]) {
			       var reader = new FileReader();
		
			       reader.onload = function(e) {
			          $(expression).attr('src', e.target.result);
			       }
			       reader.readAsDataURL(input.files[0]);
			    }
			 }
			 $(function() { // 파일 업로드3
				    $('#img_select3').change(function() {
				       setImageFromFile(this, '#preview3');
				    });
				 });
				 //파일 업로드
				 function setImageFromFile(input, expression) {
				    if (input.files && input.files[0]) {
				       var reader = new FileReader();
			
				       reader.onload = function(e) {
				          $(expression).attr('src', e.target.result);
				       }
				       reader.readAsDataURL(input.files[0]);
				    }
				 }
   	 
		function check() {
			// input radio타입
			/* 
			$("input:radio[name=resType]:checked");
			$("input:radio[name=resSize]:checked");
			$("input:radio[name=smoking]:checked");
			 */
			 
			 if(!$("input:radio[name='resType']").is(":checked")){
					alert("펫시터님의 거주지 유형을 선택해 주세요.");
					return false;
				}
			 if(!$("input:radio[name='resSize']").is(":checked")){
					alert("펫시터님의 거주지 규모을 선택해 주세요.");
					return false;
				}	
			 if(!$("input:radio[name='smoking']").is(":checked")){
					alert("펫시터 님의 가구원 흡연 여부에 대해 선택해 주세요.");
					return false;
				}
			 if($("#img_select1").val()=="" || $("#img_select2").val()=="" || $("#img_select3").val()=="" ){
				 alert("거주지 사진 3장은 필수 입니다.");
				 return false;
			 }
			 else{
				 return true;
			 }
		 }
    	
    	
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
            	<div class="list-group-item list-group-item-action list-group-item-secondary">
            		<p class="h_font ">위탁 펫시터 지원서 작성하기</p>
            	</div>
            	<!-- <p class="h_font">위탁 펫시터 지원서 작성하기</p> -->
				<form name="fsitterApplyForm" action="fsitterApply.action" method="post" enctype="multipart/form-data" onsubmit="return check()">
					<div class="panel panel-default">
						<div class="panel-heading">
							<p class="">위탁 펫시터 지원을 해주셔서 감사합니다. 성실한 답변 부탁드립니다 : )<br><br>
							키위는 펫시터를 지원 할 때 아래 사항을 모두 입력 해 주셔야 서비스를 의뢰 받을 수 있습니다!</p><br>
						</div>
		
						<div class="panel-body">
								<p class="l_font">돌봄 서비스를 제공하는 거주지 유형을 선택 해주세요. 
								<span class="sss_font"> * </span></p>
								<div class="form-radio" id="type">
								  <input class="form-check-input" type="radio" name="resType" id="resType1" value="1">
								   <label class="form-radio-label" for="resType1"> 단독주택 </label>
								  <input class="form-check-input" type="radio" name="resType" id="resType2" value="2">
								   <label class="form-radio-label" for="resType2"> 아파트 </label>
								  <input class="form-check-input" type="radio" name="resType" id="resType3" value="3">
								   <label class="form-radio-label" for="resType3"> 빌라 </label>
								
								<input class="form-check-input" type="radio" name="resType" id="resType4" value="4">
								   <label class="form-radio-label" for="resType4"> 오피스텔 </label>
								  <input class="form-check-input" type="radio" name="resType" id="resType5" value="5">
								   <label class="form-radio-label" for="resType5"> 원룸 </label>
								  <input class="form-check-input" type="radio" name="resType" id="resType6" value="6">
								   <label class="form-radio-label" for="resType6"> 공동주택 </label>
								</div><br><br>
								
								<p class="l_font">돌봄 서비스를 제공하는 거주지 규모를 선택 해주세요.
								<span class="sss_font"> * </span></p>
								<div class="form-radio" id="size">
								  <input class="form-check-input" type="radio" name="resSize" id="resSize1" value="1">
								   <label class="form-radio-label" for="resSize1"> 1~10평 </label>
								  <input class="form-check-input" type="radio" name="resSize" id="resSize2" value="2">
								   <label class="form-radio-label" for="resSize2"> 11~20평 </label>
								  <input class="form-check-input" type="radio" name="resSize" id="resSize3" value="3">
								   <label class="form-radio-label" for="resSize3"> 21~30평 </label>
								  <input class="form-check-input" type="radio" name="resSize" id="resSize4" value="4">
								   <label class="form-radio-label" for="resSize4"> 31~40평 </label>
								  <input class="form-check-input" type="radio" name="resSize" id="resSize5" value="5">
								   <label class="form-radio-label" for="resSize5"> 41~50평 </label>
								  <input class="form-check-input" type="radio" name="resSize" id="resSize6" value="6">
								   <label class="form-radio-label" for="resSize6"> 51~60평 </label>
								  <input class="form-check-input" type="radio" name="resSize" id="resSize7" value="7">
								   <label class="form-radio-label" for="resSize7"> 61평 이상 </label>
								</div><br><br>
									
								<p class="l_font">돌봄 서비스를 제공하는 거주지에 거주하는 가구원 흡연 여부를 택1 해주세요.
								<span class="sss_font"> * 펫 위탁 환경을 의뢰자님들이 참고하기 위해 필요합니다. </span></p>
								<div class="form-radio">
								  <input class="form-check-input" type="radio" name="smoking" id="1" value="1">
								  <label class="form-check-label" for="1">네, 흡연자가 있어요. </label>
								  <input class="form-check-input" type="radio" name="smoking" id="2" value="2">
								  <label class="form-check-label" for="2">아니요, 흡연자는 없습니다.</label>
								</div><br><br>
									
								<p class="l_font">돌봄 서비스를 제공하는 실제 거주지 사진을 3장 첨부 해 주세요.
								<span class="sss_font"> * 펫의 위탁 환경을 의뢰자님들이 참고하기 위해 필요합니다.</span></p>
								
									<div class="text-center row filebox">
										<div class="col-md-4">
										    <div>
										    	<img src="/images/sitter/no_Img.png" id="preview1" style="width: 200px; height:200px; object-fit: cover;"/>
										    </div>
										    <div>
										    	<label for="img_select1" class="input-file-button">사진 첨부</label> 
	                          					<input type="file" id="img_select1" name="file" style="display: none;" />
										    </div>  
										</div>
									    
										<div class="col-md-4">
									    	 <div>
									    	 	<img src="/images/sitter/no_Img.png" id="preview2" style="width: 200px; height:200px; object-fit: cover;"/> 
									    	 </div>
									    	 <div>
									    	 	<label for="img_select2" class="input-file-button">사진 첨부</label> 
	                          					<input type="file" id="img_select2" name="file" style="display: none;" />
									    	 </div> 
										</div>
									    
									    <div class="col-md-4">
									    	 <div>
									    	 	<img src="/images/sitter/no_Img.png" id="preview3" style="width: 200px; height:200px; object-fit: cover;"/>
									    	 </div>
									    	 <div>
									    	 	<label for="img_select3" class="input-file-button">사진 첨부</label> 
	                          					<input type="file" id="img_select3" name="file" style="display: none;" />
									    	 </div>
									    </div>
									    <br><br>
								    <span class="sss_font" style="margin-top: 20px;">첨부 파일은 최대 3개, 10MB 까지 등록 가능합니다.</span>
								    
								</div>
								<br>
									
									
						</div><!-- .panel-body -->
					</div><!-- .panel panel-default -->
					
					<div class="text-center">
						<button type="submit" class="btn" style="background-color:#FE5C17; color:white; wi" role="button">최종제출</button>
					</div>
				</form>
            </div>
        </div>
    </div>
    <!-- 404 End -->

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

    <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>
    <script src="/javascript/main.js"></script>
</body>

</html>