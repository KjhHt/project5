<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <title>가위바위보 게임</title>
    <link href="${path}/project5/bootstrap-5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="${path}/project5/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #646987;
        }
        input.button-rock {
			width: 200px; height: 200px;
			background-image: url(https://feelstory.com/gnu/nori/img/2_on.png);
			background-size: 100% 100%;
		}
		input.button-paper {
			width: 200px; height: 200px;
			background-image: url(https://feelstory.com/gnu/nori/img/3_on.png);
			background-size: 100% 100%;
		}
		input.button-scissors {
			width: 200px; height: 200px;
			background-image: url(https://feelstory.com/gnu/nori/img/1_on.png);
			background-size: 100% 100%;
		}
		input.playerChoice {
			width: 55px;
			height: 32px;
			font-size: 15px;
			border: 0;
			border-radius: 15px;
			outline: none;
			padding-left: 10px;
			background-color: rgb(233, 233, 233);
		}
		$(document).ready(function(){
      <%-- 
      
      --%>
      	$('input').click(function(){
		  if($(this).hasClass("active")){
		    $(this).removeClass("active");
		  }else{
		    $(this).addClass("active");  
		  }
		});   
   	});
    </style>
</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<br>
<br>
<br>
<h1>가위바위보 게임</h1>
<form id="playerForm" action="rpsgameresult.do" onSubmit="changepoint(obj);">
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f1">보유 포인트</span>
        <input type="text" class="form-control w-50" value="${curPoint}" aria-describedby="f1"
               id="curPoint" readonly>
    </div>
    <div class="input-group mb-auto">
        <span class="input-group-text w-50" id="f2" style="background-color: lightgreen;">*배팅할 포인트</span>
        <input type="text" class="form-control w-50" value="0" aria-describedby="f2" id="setPoint"
               name="setPoint" onchange="changePoint(this);" style="background-color: lightgreen;"
               oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
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
      <label for="checkPlayer">
        <input type="button" name="player" class="button-scissors"
               onclick="document.querySelector('#player').value='가위';"/>
        <input type="button" name="player" class="button-rock"
               onclick="document.querySelector('#player').value='바위';"/>
        <input type="button" name="player" class="button-paper"
               onclick="document.querySelector('#player').value='보';"/><br>
        <input type="text" id="player" name="player" readonly/>를 선택하셨습니다!!       
        <input type="submit" value="배팅!" onchange="checkPlayer(this);" class="btn btn-success m-2">
      </label>
     
    </div>
</form>
</body>
<script>
	function changePoint(obj) {
	    if (obj.value > ${curPoint}) {
	        alert("배팅포인트는 0이상, 보유포인트(${curPoint}) 이하만 입력 가능합니다.");
	        obj.value = 0;
	        return;
	    }
	    document.querySelector("#leftPoint").value = ${curPoint}-obj.value;
	    document.querySelector("#getPoint").value = Math.floor(obj.value *${odds});
	    document.querySelector("#resultPoint").value = Math.floor((${curPoint}-obj.value) + (obj.value *${odds}));
	}
	function checkPlayer(bool){
		if(bool.value.length==0){
			alert("가위/바위/보 중 하나를 선택해주세요!");
			return false;
		}
		return true;
	}
        
</script>
</html>