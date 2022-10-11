<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
td{text-align:center;}
.table14_5 table {
	width:100%;
	margin:15px 0;
	border:0;
}
.table14_5 th {
	font-weight:bold;
	background-color:#c6c6dd;
	color:#202020
}
.table14_5,.table14_5 th,.table14_5 td {
	font-size:0.95em;
	text-align:center;
	padding:4px;
	border-collapse:collapse;
}
.table14_5 th,.table14_5 td {
	border: 1px solid #ffffff;
	border-width:1px
}
.table14_5 th {
	border: 1px solid #c6c6dd;
	border-width:1px 0 1px 0
}
.table14_5 td {
	border: 1px solid #eeeeee;
	border-width:1px 0 1px 0
}
.table14_5 tr {
	border: 1px solid #ffffff;
}
.table14_5 tr:nth-child(odd){
	background-color:#f7f7f7;
}
.table14_5 tr:nth-child(even){
	background-color:#ffffff;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>	
	});
	function goInsert(){
		location.href="${path}/boardInsertForm.do"
	}
	function goDetail(no){
		location.href="${path}/boardDetail.do?no="+no;
	}	
</script>
</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<br>
<br>
<br>
<div class="jumbotron text-center">
  <h2>마겜게임보기</h2>
</div>
<div class="table14_5">
	<!-- 
	form action="호출할 controller url"
	   name="subject"  name="writer"    -->
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input class="form-control mr-sm-2" name="ctitle" placeholder="제목" 
	    	value="${param.ctitle}"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" onclick="goInsert()" 
	    	type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="20%">
   	<col width="45%">
   	
    <thead>
      <tr class="table14_5">
        <th>종류</th>
        <th>게임명</th>
        <th>회차 마감일시</th>
      </tr>
    </thead>	
    <tbody>
    	<!-- controller에서 넘겨준 모델데이터 : blist -->
    	<c:forEach var="bd" items="${blist}">
    	<tr><td>${bd.ctype}</td><td>${bd.ctitle}</td>
    		<td>${bd.cdate }</td>
    	</c:forEach>
    </tbody>
	</table>    
</div>
</body>
</html>