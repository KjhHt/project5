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
<title>회원가입창</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
   .input-group-text{width:100%;background-color:#cfffdf;color:black;font-weight:bolder;}
   .input-group-prepend{width:20%;}
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
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>회원가입</h2>

</div>
<div class="container">
   <form id="frm01"  class="form"  method="post">
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">아이디</span>
         </div>
         <input name="id" class="form-control" 
            value="${MEMBERtoto.id}"   placeholder="아이디를 입력하세요" />   
      </div>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">비밀번호</span>
         </div>
         <input name="pw" class="form-control" 
            value="${MEMBERtoto.pw}" placeholder="비밀번호를 입력하세요" />   
      </div>    
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">이름</span>
         </div>
         <input name="name" class="form-control" 
            value="" placeholder="이름을 입력하세요" />   
      </div>    
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">이메일</span>
         </div>
         <input name="email" class="form-control" 
            value="" placeholder="이메일을 입력하세요" />   
      </div>    
      
      <div class="text-right">
         <button type="button" onclick="insertProc()" class="btn btn-success">등록</button>
         <button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>
      </div>  
   </form>
</div>
<script type="text/javascript">
var isInsert = "${isInsert}"
   if(isInsert=="Y"){
        if(!confirm("등록성공했습니다\n계속등록하시겠습니까?")){
            // 취소 입력시 조회화면 이동..
            location.href="${path}/boardList.do"
         }
   }
function goMain(){
   location.href="${path}/boardList.do"
}
function insertProc(){
      if(confirm("등록하시겠습니까?")){
         var subjectVal = $("[name=subject]").val();
         if( subjectVal == ""){
            alert("제목을 등록하세요")
            $("[name=subject]").focus();
            return; // 프로세스 중단 처리
         }
         var writerVal = $("[name=writer]").val();
         if( writerVal == ""){
            alert("작성자를 등록하세요")
            $("[name=writer]").focus();
            return; // 프로세스 중단 처리
         }
         document.querySelector("form").submit();
      }
   }
</script>
</body>
</html>