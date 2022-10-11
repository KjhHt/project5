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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
  <h2>1:1문의 상세화면</h2>

</div>
<div class="container">
   <form id="frm01" class="form"  method="post">
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">게시판 번호</span>
         <input name="boardno" class="form-control" 
            value="${oneoneinq.boardno}"  />   
         </div>
      </div>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">제 목</span>
         <input name="title" class="form-control" 
            value="${oneoneinq.title}"/>
         </div> 
      </div>    
            <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">이메일</span>

         <input name="email" class="form-control" 
            value="${oneoneinq.email}" /> 
         </div>
      </div>    
            <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">핸드폰번호</span>

         <input name="phonenumber" class="form-control" 
            value="${oneoneinq.phonenumber}"  /> 
         </div>
      </div>    
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">작성자</span>
         <input name="name" class="form-control" 
            value="${oneoneinq.name}" placeholder="작성자 입력하세요" />
         </div>
         <div class="input-group-prepend">
            <span class="text-center input-group-text">조회수</span>

         <input name="readcnt" class="form-control" 
            value="${oneoneinq.readcnt}" readonly />  
         </div>
      </div>    
       <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">등록일</span>
         </div>
         <input class="form-control" 
            value='<fmt:formatDate value="${oneoneinq.nowtime}"
             type="both"/>' placeholder="작성자 입력하세요" />
      </div>   
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">내 용</span>
         </div>
         <textarea name="content" rows="10" class="form-control" 
            placeholder="내용 입력하세요">${oneoneinq.content}</textarea>    
      </div>
      <div class="text-right">
         <button type="button" onclick="updateProc()" class="btn btn-success">수정</button>
         <button type="button" onclick="deleteProc()" class="btn btn-danger">삭제</button>
         <button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>
      </div>  
   </form>
</div>
<script type="text/javascript">

function updateProc(){
	if(confirm("수정하시겠습니까?")){
		$("form").attr("action","${path}/updateOneOneinq.do");
		$("form").submit();
	}
}
function deleteProc(){
	if(confirm("삭제하시겠습니까?")){
		$("form").attr("action","${path}/deleteOneOneinq.do");
		$("form").submit();		
	}
}


var proc = "${proc}"
	if(proc=="upt"){
		alert("수정 완료되었습니다.\n1:1문의 리스트화면으로 이동합니다");
		location.href="${path}/OneOneinq.do";
	}
	if(proc=="del"){
		alert("삭제 완료되었습니다.\n1:1문의 리스트화면으로 이동합니다");
		location.href="${path}/OneOneinq.do";
	}
	function goMain(){
	   location.href="${path}/OneOneinq.do";
	   
	}



</script>
</body>
</html>