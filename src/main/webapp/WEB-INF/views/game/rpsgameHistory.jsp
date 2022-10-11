<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>가위바위보 게임 내역</title>
    <link href="${path}/project5/bootstrap-5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="${path}/project5/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #646987;
        }
    </style>
</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>

<div class="container w-75" style="margin-top: 150px;">
    <table class="table table-dark table-hover">
        <tr>
            <th>번호</th>
            <th>컴퓨터</th>
            <th>플레이어</th>
            <th>게임결과</th>
            <th>이전포인트</th>
            <th>결과포인트</th>
        </tr>
        <c:forEach var="rst" items="${result}" varStatus="sts">
            <tr>
                <td>${sts.index+1}</td>
                <td>${rst.com}</td>
                <td>${rst.player}</td>
                <c:choose>
                    <c:when test="${rst.gameresult == '승리'}">
                        <td>승리</td>
                    </c:when>
                    <c:when test="${rst.gameresult == '패배'}">
                        <td>패배</td>
                    </c:when>
                    <c:when test="${rst.gameresult == '무승부'}">
                        <td>무승부</td>
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