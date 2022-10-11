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
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>홀짝게임 내역</title>
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

<div class="container w-50" style="margin-top: 150px;">
    <c:if test="${auth == 1}">
        <div class="text-center m-3">
        <input type="button" value="홀짝 관리자화면" class="btn btn-primary m-2" align="center"
               onclick="location.href='oegameAdmin.do';"/>
        </div>
    </c:if>
    <table class="table table-dark table-hover">
        <tr>
            <th>번호</th>
            <th>랜덤값</th>
            <th>홀짝</th>
            <th>승리여부</th>
            <th>이전포인트</th>
            <th>결과포인트</th>
        </tr>
        <c:forEach var="rst" items="${result}" varStatus="sts">
            <tr>
                <td>${sts.index+1}</td>
                <td>${rst.random}</td>
                <td>${rst.choice}</td>
                <c:choose>
                    <c:when test="${rst.win == 1}">
                        <td>승리</td>
                    </c:when>
                    <c:when test="${rst.win == 0}">
                        <td>패배</td>
                    </c:when>
                </c:choose>
                <td>${rst.prevpoint}</td>
                <td>${rst.resultpoint}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
<script>
</script>
</html>