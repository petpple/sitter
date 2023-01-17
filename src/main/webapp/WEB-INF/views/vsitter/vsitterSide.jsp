<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>                                                 
<meta charset="UTF-8">
<title></title>

<!-- <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
 --><!-- <link rel="stylesheet" href="/css/sitter/sitterMain.css"> -->
<link rel="stylesheet" href="/css/sitter/sitterMain.css">
</head>

<body>
        <div class="IMG1" >
            <img src="/images/vsitter/pet_info.svg" class="svgImg1">
            <span class="font h_font">펫시팅 정보</span>
        </div>
        <div class ="box_pi">
            <img src="/images/vsitter/u_svc.svg" class="svgImg2">
            <span class="font m_font">긴급 요청 서비스</span><br>
            <a href="http://localhost:8093/sitter/sitterInfoUsvcWaiting" class="side_aTag"><span class="font s_font font_black">수락 대기중 : n건</span></a><br>
            <a href="http://localhost:8093/sitter/sitterInfoUsvcPast" class="side_aTag"><span class="font s_font font_black">지난 펫시팅 이력 : n건</span></a><br>
        </div><br>
        <div class ="box_pi">
            <img src="/images/vsitter/visit_svc.svg" class="svgImg2">
            <span class="font m_font">방문 서비스</span><br>
            <a href="http://localhost:8093/sitter/sitterInfoVsvcWaiting" class="side_aTag"><span class="s_font font_black">수락 대기중 : <span><c:out value="${waitingAccept}"/></span> 건</span></a><br>
            <a href="http://localhost:8093/sitter/sitterInfoVsvcPast" class="side_aTag"><span class="s_font font_black">지난 펫시팅 이력 : <span>${sumPetsitting }</span> 건</span></a><br>
        </div><br>
        <div class ="box_pi_money">
            <img src="/images/vsitter/money.svg" class="svgImg2">
            <span class="font m_font">수익금</span><br>
				<c:if test="${empty vsitterList }">
   	        		<span class="font s_font buttons">이번 달 수익금 : 이번 달<br> 수익금이 없습니다.</span><br>
       	    		<span class="font s_font buttons">총 수익금 : 총 수익금이<br> 없습니다.</span><br>
				</c:if>
	
				<c:forEach var="vsitter" items="${vsitterList }">
   	        		<span class="font s_font buttons">이번 달 수익금 : <fmt:formatNumber value="${vsitter.totalPrice }"/> 원</span><br>
       	    		<span class="font s_font buttons">총 수익금 : <fmt:formatNumber value="${vsitter.totalPrice }"/> 원</span><br>
					
				</c:forEach>            	
            	

        </div>
</body>
</html>