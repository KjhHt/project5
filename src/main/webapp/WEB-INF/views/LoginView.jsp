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
<title>토토 로그인</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
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

<script>
function canLog(){
	var id = document.querySelector("#id")
	if(id.value!=null){
		if(id.value==""){
			alert("아이디를 입력해주세요")
			id.focus();
			return
		}else{
			if(id.value.length<5 || id.value.length>16){
				alert("id는 5~16자만 입력가능합니다")
				id.focus()
				return
			}
		}
	}
	var pw = document.querySelector("#pw")
	if(pw.value!=null){//비밀번호 유효성검사
		if(pw.value==""){
			alert("비밀번호를 입력해주세요")
			pw.focus()
			return
		}else{
			if(pw.value.length<5 || pw.value.length>12){
				alert("비밀번호는 5~12자리여야합니다")
				pw.value=""
					pw.focus()
				return
			}
		}
	}
}
function gomain(){
	location.href=" ";
}
function goSignup(){
	location.href=" ";
}
</script>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div class="jumbotron text-center">
  <h2>스포츠토토 로그인</h2>
</div>
<div class="container">
   <form id="frm01" class="form"  method="post" action="">
     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
       <input type="text" name="id" id="id" autocomplete="off" required
       			class="form-control mr-sm-2" placeholder="아이디 입력" />
       <input type="password" name="pw" id="pw" autocomplete="off" required
       			class="form-control mr-sm-2" placeholder="비밀번호 입력" />

       <button id="btn" class="btn btn-info" onclick="gomain()" type="submit">로그인</button>
       <button id="btn" class="btn btn-info" onclick="goSignup()" type="submit">회원가입</button>
    </nav>
   </form>
   <!-- 
    <script >
   		let id=${'#id'};
   		let pw=${'#pw'};
   		let btn=${'#btn'};
   		
   		$(btn).on('click', function(){
   			if($(id).val()==""){
   				
   			}else if($(pw).val()==""){
   				
   			}
   			
   		}
   				
   		
   		)
   </script>
    -->
  
   
     <%
	String logPass = request.getParameter("logPass");
	
	if(logPass!=null && logPass.equals("0")){
		out.println("");
	}else if(logPass!=null && logPass.equals("-1")){
		out.println("");
	}
  %>
   
</div>
</body>
</html>