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
    margin: auto;
    display:block;
    padding:10px 20px
}

.w-btn {
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 700;
}

.w-btn-outline {
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 700;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
</script>
</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div class="jumbotron text-center">
  <h2>포인트 충전</h2>

</div>
<div class="container">
<table style="border:0">
   <form id="frm01" action="${path}/mypointDetail.do" 
         class="form"  method="post">
         <tr><th>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">★ 아이디 ★</span>
         <input name="pw" class="form-control" 
            value="${param.pw}" placeholder="비밀번호를 입력하세요" />   
      </div>
	</div></th></tr>
       </div>
         <tr><th>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">충전 포인트</span>
         <input name="point" class="form-control" 
            value="${param.point}" placeholder="포인트 입력하세요" /> 
      </div>    
         </div>
      <div class="text-right">
         <button class="w-btn-indigo" type="submit" onclick="updateProc()" class="btn btn-success">충전</button>
      </div><br>  
      </tr></th>
             <tr><td><img src="data:image/jpeg;base64,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"
                width="70%"></td><br></tr>
            <tr><th>유의사항<br>
            ' 가상계좌는 한 ID당 1개만 발급됩니다.<br>
            ' 1회에 1만원부터 100만원까지 충전 가능하며 횟수 제한이 없습니다.<br>
            ' 가상계좌번호로 입금 시 약 10분 이내로 자동 충전됩니다.<br>
            ' 발급받은 가상계조를 사용 중에 충전 전 가상계조 변경하나 타인의 가상계좌로 입금했을 경우 기존 발급받았던 예치금의 자동 충전은 불가합니다.<br>
            ' 본인 가상계좌가 아닌 가상계좌로 입금한 경우 타인의 예치금으로 충전되며, 이에 대한 책임은 본인에게 있습니다.<br>
            ' 은행 전산장애 등으로 충전시간이 지연될 수 있습니다.<br>
            ' ATM 기기에 따라 무매체 입금이 불가할 수 있습니다.</th></tr>
   </form>   
    </table>

</div>
<script type="text/javascript">
function updateProc(){
	if(confirm("충전하시겠습니까?")){
		$("form").attr("action","${path}/updateMypoint.do");
		$("form").submit();
	}
}
var proc = "${proc}"
	if(proc=="upt"){
		alert("충전 완료되었습니다.");
		location.href="${path}/MypointList.do";
	}
</script>
</body>
</html>