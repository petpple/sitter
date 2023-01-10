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
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  
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
                <div class="col-lg-2" id="info">
				<c:import url="http://localhost:8093/vsitter/vsitterSide"></c:import>
				</div>
			<div class="col-lg-7">
				<div class="IMG1">
					<img src="/images/vsitter/sitting_on.svg" class="svgImg1"> <span
						class="font h_font">진행 중인 펫시팅</span>
				</div>
				<div class="box_mi">
					<span class="badge font_black"
						style="background-color: rgb(225, 199, 199);">긴급-방문서비스</span>
					<img src="/images/vsitter/timer-icon.svg" class="svgImg1">
					<span id="remainTime" class="s_font"></span>
					<div class="serv_on">
						<table class="table tab s_font align-middle">
							<tr>
								<th>신청번호</th>
								<th style="text-align: center;">내용</th>
								<th>의뢰자</th>
								<th>결제금액</th>
							</tr>
							<tr>
								<td><span class="reserveInfo">2333323</span></td>
								<td style="text-align:left; ">
									<ul>
							
										<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
										<li>시작일자: 2022-12-12 10:00</li>
										<li>종료일자: 2022-12-12 13:00</li>
									</ul>
								</td>
								<td><div class="reservInfoTd">
										<img src="/images/vsitter/profile.png" style="width: 60px;"><br>
										<span class="mb_font">루카스</span>
									</div>
								</td>
								<td><span class="reserveInfo">350,030원</span></td>
							</tr>
						</table>

						<div>
							<button type="button" class="btn btn-danger">의뢰자 노쇼</button>
							<a href="http://localhost:8093/sitter/sitterDiaryPetChoice"><button type="button" class="btn btn-primary"
								style="">일지 쓰기</button></a>
						</div>
					</div>
				</div>
				<br>
				<div class="IMG1">
					<img src="/images/vsitter/sitting_on.svg" class="svgImg1"> <span
						class="font h_font">진행 예정인 펫시팅</span>
				</div>
				<div class="box_mi">

					<div class="serv_on">
						<table class="table tab s_font align-middle">
							<tr>
								<th>신청번호</th>
								<th >내용</th>
								<th>의뢰자</th>
								<th>결제금액</th>
							</tr>
							<tr>
				
								<td><span class="reserveInfo">23333</span></td>
								
								<td style="text-align:left; ">
									<ul>
										<li><a href=""><span class="badge s_font font_black"
											style="background-color: rgb(225, 199, 199);">긴급-위탁서비스</span></a> </li>
										<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
										<li>시작일자: 2022-12-12 10:00</li>
										<li>종료일자: 2022-12-12 13:00</li>
									</ul>
								</td>
								
								<td><div class="reservInfoTd">
										<img src="/images/vsitter/profile.png" style="width: 60px;"><br>
										<span class="mb_font">루카스</span>
									</div>
								</td>
								<td><span class="reserveInfo">3500330원</span></td>
							</tr>
							<tr>
								<td><span class="reserveInfo">2333323</span></td>
								<td style="text-align:left; ">
									<ul>
										<li><a href=""><span class="badge s_font font_black"
											style="background-color: rgb(225, 199, 199);">긴급-위탁서비스</span></a> </li>
										<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
										<li>시작일자: 2022-12-12 10:00</li>
										<li>종료일자: 2022-12-12 13:00</li>
									</ul>
								</td>
								<td><div class="reservInfoTd">
										<img src="/images/vsitter/profile.png" style="width: 60px;"><br>
										<span class="mb_font">루카스</span>
									</div></td>
								<td><span class="reserveInfo">35000원</span></td>
							</tr>
							<tr>
								<td><span class="reserveInfo">23333232</span></td>
								<td style="text-align:left; ">
									<ul>
										<li><a href=""><span class="badge s_font font_black"
											style="background-color: rgb(225, 199, 199);">긴급-위탁서비스</span></a> </li>
										<li>주소 : 서울특별시 강서구 화곡로 344 경동 에파이어 304호</li>
										<li>시작일자: 2022-12-12 10:00</li>
										<li>종료일자: 2022-12-12 13:00</li>
									</ul>
								</td>
								<td>
									<div class="reservInfoTd">
										<img src="/images/vsitter/profile.png" style="width: 60px;"><br>
										<span class="mb_font">루카스아앙라</span>
									</div>
								</td>
								<td><span class="reserveInfo">353,000원</span></td>
							</tr>
						</table>

					</div>


				</div>
			</div>
			<div class="col-lg-3">
				<div id="test">
					<c:import url="http://localhost:8093/sitter/sitterCal"></c:import>
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
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/library/wow/wow.min.js"></script>
    <script src="/library/easing/easing.min.js"></script>
    <script src="/library/waypoints/waypoints.min.js"></script>
    <script src="/library/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/javascript/main.js"></script>
</body>

</html>