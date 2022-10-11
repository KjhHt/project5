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
    <title>홀짝게임</title>
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
<br>
<br>
<br>
<h1>홀짝게임</h1>
<form action="oegameResult.do">
    <input type="hidden" id="choice" name="choice"/>

    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f1">보유 포인트</span>
        <input type="text" class="form-control w-50" value="${curPoint}" aria-describedby="f1"
               id="curPoint" readonly>
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f2" style="background-color: lightgreen;">*배팅할 포인트</span>
        <input type="text" class="form-control w-50" value="0" aria-describedby="f2"
               name="setPoint" onkeyup="changePoint(this);" onchange="changePoint(this);" style="background-color: lightgreen;"
               oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"/>
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f3">남은 포인트</span>
        <input type="text" class="form-control w-50" value="${curPoint}" aria-describedby="f3"
               id="leftPoint" readonly>
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f4">배당률</span>
        <input type="text" class="form-control w-50" value="${odds}" aria-describedby="f4"
               readonly>
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f5">획득 예정 포인트</span>
        <input type="text" class="form-control w-50" value="0" aria-describedby="f5"
               id="getPoint" readonly>
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f6">정답시 총 포인트</span>
        <input type="text" class="form-control w-50" value="${curPoint}" aria-describedby="f6"
               id="resultPoint" readonly>
    </div>

    <div class="text-center m-3">
        <input type="button" value="홀수!" class="btn btn-primary m-2"
               onclick="document.querySelector('#choice').value='홀'; alert('홀수!');"/>
        <input type="button" value="짝수!" class="btn btn-secondary m-2"
               onclick="document.querySelector('#choice').value='짝'; alert('짝수!');"/><br>

        <input type="submit" value="배팅!" class="btn btn-success m-2">
    </div>
</form>
</body>
<script>
    function changePoint(obj) {
        //alert(document.querySelector('#choice').value);
        if (obj.value < 0 || obj.value > ${curPoint}) {
            alert("배팅포인트는 0이상, 보유포인트(${curPoint}) 이하만 입력 가능합니다.");
            if (obj.value > ${curPoint})
                obj.value = ${curPoint};
            else
                obj.value = 0;
            return;
        }
        document.querySelector("#leftPoint").value = ${curPoint}-obj.value;
        document.querySelector("#getPoint").value = Math.floor(obj.value *${odds});
        document.querySelector("#resultPoint").value = Math.floor((${curPoint}-obj.value) + (obj.value *${odds}));
    }
</script>
</html>