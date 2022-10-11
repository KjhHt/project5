<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <title>가위바위보 게임 결과</title>
    <link href="${path}/project5/bootstrap-5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="${path}/project5/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: rgba(255,255,255,0.75);
        }
        @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

		.jm-font{
		font-family: 'Jeju Myeongjo', serif;
		}
    </style>
</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div style="margin-top: 50px;">
    <c:choose>
        <c:when test="${rst.gameresult == '승리'}">
            <img src="https://ih1.redbubble.net/image.503520882.5099/flat,750x,075,f-pad,750x1000,f8f8f8.u5.jpg"
                 width="750" height="800">
            <h2 class="jm-font" align="center" style="color:#0FCA13">승리!!!</h2>
        </c:when>
        <c:when test="${rst.gameresult == '패배'}">
            <img src="https://img.freepik.com/premium-vector/cute-skeleton-skull-bones-funny-drawing-cartoons-30s-halloween-holiday_252097-404.jpg"
                 width="750" height="800" alt="정답여부 이미지...">
            <h2 class="jm-font" align="center" style="color:#E71916">패배...</h2>
        </c:when>
        <c:when test="${rst.gameresult == '무승부'}">   	
        	<img src="https://mblogthumb-phinf.pstatic.net/MjAyMTEyMTVfMjYy/MDAxNjM5NTc2MDYxNzA2.uveCoTuq_G-gCtoqPD3wggjfB32I-_JEg2YXZ2WrlGUg.d3b4_eKJ4x9ISBayogoKVjHKgqL-vpJ5tp7dDllONu8g.JPEG.se413496/98459e5a9ed0425df5832e6c8e94e092.jpg?type=w800"
                 width="750" height="800" alt="정답여부 이미지...">
            <h2 class="jm-font" align="center" style="color:#FA8343">무승부</h2>
        </c:when>
    </c:choose>
    <fieldset disabled>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f4">컴퓨터</span>
        <input type="text" class="form-control w-50" value="${rst.com}" aria-describedby="f4">
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f3">플레이어</span>
        <input type="text" class="form-control w-50" value="${rst.player}" aria-describedby="f3">
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f1">포인트 변동량</span>
        <input type="text" class="form-control w-50" value="${rst.resultpoint-rst.prevpoint}" aria-describedby="f1">
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f2">최종 포인트</span>
        <input type="text" class="form-control w-50" value="${rst.resultpoint}" aria-describedby="f2">
    </div>
    </fieldset>
    <div class="text-center m-3">
        <input type="button" value="다시하기" class="btn btn-primary m-2"
               onclick="location.href='rpsgame.do';"/>
        <input type="button" value="메인" class="btn btn-secondary m-2"
               onclick="location.href='project5/Main.jsp';"/><br>
    </div>
</div>
</body>
<script>
</script>
</html>