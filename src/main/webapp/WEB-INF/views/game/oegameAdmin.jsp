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
    <script src="${path}/project5/js/jquery-3.6.0.min.js"></script>
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
<script>
    $(document).ready(function () {
        $("#id").on("keyup change", function () {
            var id = $("[name=id]").val()
            $.ajax({
                url: "${path}/oegameAdminAjax.do",
                data: "id=" + id,
                dataType: "json",
                success: function (data) {
                    console.log(data)
                    var list = data.result
                    var addHTML = "";
                    $(list).each(function (idx, rst) {
                        addHTML += "<tr><td>" + (idx + 1) + "</td><td>" + rst.id
                            + "</td><td>" + rst.random + "</td><td>" + rst.choice + "</td>";
                        if (rst.win == 1)
                            addHTML += "<td>승리</td>";
                        else if (rst.win == 0)
                            addHTML += "<td>패배</td>";
                        addHTML += "<td>" + rst.prevpoint + "</td><td>" + rst.resultpoint + "</td></tr>";
                    });
                    $("#oelist").html(addHTML)
                }
            });
        });
    });

    function setOdd() {
        document.querySelector("#setod").value = "Y";
        document.querySelector("form").submit();
    }
</script>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>

<div class="container w-50" style="margin-top: 150px;">
    <form action="oegameAdmin.do">
        <div class="container-fluid row justify-content-center align-items-center text-center">
            <input type="hidden" name="setod" id="setod" value="">
            <div class="col-sm-4">
            <span class="input-group-text" id="f1">아이디 검색</span>
            <input type="text" id="id" name="id" class="form-control text-center" value="${param.id}"
                   aria-describedby="f1">
            <span class="input-group-text" id="f2">배율 설정</span>
            <input type="text" name="setOdds" class="form-control text-center" value="${odds}"
                   aria-describedby="f2"
                   oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
            <!--
            <input type="button" id="schBtn" value="검색" class="btn btn-success m-2">
            -->
            <input type="button" value="배율 설정" onclick="setOdd();" class="btn btn-success m-2">
            </div>
        </div>
    </form>
    <table class="table table-dark table-hover">
        <tr>
            <th>번호</th>
            <th>아이디</th>
            <th>랜덤값</th>
            <th>홀짝</th>
            <th>승리여부</th>
            <th>이전포인트</th>
            <th>결과포인트</th>
        </tr>
        <tbody id="oelist">
        <c:forEach var="rst" items="${result}" varStatus="sts">
            <tr>
                <td>${sts.index+1}</td>
                <td>${rst.id}</td>
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
        </tbody>
    </table>
</div>
</body>
<script>
</script>
</html>