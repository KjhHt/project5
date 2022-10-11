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
h2{    font-family: "paybooc-Light", sans-serif;}
   table {
    margin-left:auto; 
    margin-right:auto;
}

table, td, th {
    border-collapse : collapse;
    border : 1px solid black;
};
HTML CSSResult Skip Results Iframe
EDIT ON
table.type07 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
    margin-left:auto; 
    margin-right:auto;
}
table.type07 thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #EFF2FA;
      font-family: "paybooc-Light", sans-serif;
}
table.type07 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  
}
table.type07 tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fcf1f4;
}
table.type07 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
  background: white;
      font-family: "paybooc-Light", sans-serif;
}
input {

  width: 500px;
  height:50px;
  margin: 20px;
  font-size: 15px;
  border: 0;
  border-radius: 5px;
  outline: none;
  background-color: rgb(233, 233, 233);
}


button {
    margin: 20px;
}

.w-btn {
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
}

.w-btn-outline {
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
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
		location.href="${path}/oneoneinqInsertForm.do"
	}
	function goDetail(boardno){
		location.href="${path}/oneoneinqDetail.do?boardno="+boardno;
	}
</script>
</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>

<div class="jumbotron text-center">
  <h2 style="color: black;">1:1문의 게시판</h2>
  <button class="w-btn w-btn-indigo" onclick="goInsert()" type="button" style="float:right;">1:1문의 등록</button>
</div>
<div class="container">
   <form id="frm01" class="form"  method="post">
     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
       <input class="form-control mr-sm-2" name="title" 
       		value="${param.title}" placeholder="제목" />
       <button class="w-btn w-btn-indigo" type="submit">검색</button>
    </nav>
   </form>

   <br>
   <table class="type07" width="80%">
      <col width="5%">
      <col width="7%">
      <col width="20%">
      <col width="7%">
      <col width="5%">
   <thead>
    
      <tr>
        <th>번호(최신)</th>
        <th>작성자</th>
        <th>제목</th>
        <th>작성일자</th>
        <th>조회수</th>
      </tr>
    </thead>   
    <tbody>
    <c:forEach var="ol" items="${oneList}" varStatus="sts">
       <tr ondblclick="goDetail(${ol.boardno})">
       <td>${sts.count}</td><td>${ol.name}</td><td>${ol.title}</td>
       	   <td><fmt:formatDate value="${ol.nowtime}"/></td><td>${ol.readcnt}</td></tr>
    </c:forEach>
    </tbody>
   </table>    
    
</div>
</body>
</html>