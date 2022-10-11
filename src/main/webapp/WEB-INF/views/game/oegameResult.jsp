<%--
  Created by IntelliJ IDEA.
  User: skawn
  Date: 2022-07-11
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <title>홀짝게임 결과</title>
    <link href="${path}/project5/bootstrap-5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="${path}/project5/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Roboto", serif;
            display: flex;
            flex-flow: column nowrap;
            justify-content: center;
            align-items: center;
            background-color: #646987;
        }
    </style>
</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div class="container w-25" style="margin-top: 150px;">
    <c:choose>
        <c:when test="${rst.win >= 1}">
            <img src="https://bunny.jjalbot.com/2016/10/B1iqI6UA/20160820_57b8357a2b0fd.jpg"
                 class="rounded mx-auto d-block" width="300" height="200" alt="정답여부 이미지...">
            <h1 class="text-center" style="color: greenyellow">정답!</h1>
        </c:when>
        <c:otherwise>
            <img src="http://t1.daumcdn.net/brunch/service/user/baGa/image/zsMOrtaz0b-lC3GCvq6I8g2eGJo.png"
                 class="rounded mx-auto d-block" width="300" height="200" alt="정답여부 이미지...">
            <h1 class="text-center" style="color: red">오답!</h1>
        </c:otherwise>
    </c:choose>
    <fieldset disabled>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f4">생성된 랜덤 숫자</span>
        <input type="text" class="form-control w-50" value="${rst.random}" aria-describedby="f4">
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f3">당신의 선택</span>
        <input type="text" class="form-control w-50" value="${rst.choice}" aria-describedby="f3">
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
               onclick="location.href='oegame.do';"/>
        <input type="button" value="메인" class="btn btn-secondary m-2"
               onclick="location.href='project5/Main.jsp';"/><br>
    </div>
</div>
</body>
<script>
</script>
</html>