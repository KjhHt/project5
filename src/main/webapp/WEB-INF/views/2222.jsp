<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
   .input-group-text{width:100%;background-color:#cfffdf;color:black;font-weight:bolder;}
   .input-group-prepend{width:20%;}
   
 body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #8181F7;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}  
</style>




</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<script type="text/javascript">
	function goMain(){
		
		location.href="";
	}
	 function goInsert(){	
			location.href="WEB-INF\\views\\Member.jsp"
		}
	
	function canLog(){
		var id = document.querySelector("#id")
		if(id != null && id.value!=null){
			if(id.value==""){
				alert("아이디를 입력해주세요")
				id.focus();
				return
			}else{
				if(id.value.length<5 || id.value.length>16){
					alert("id는 3~16자만 입력가능합니다")
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
				if(pw.value.length<3 || pw.value.length>12){
					alert("비밀번호는 5~12자리여야합니다")
					pw.value=""
					pw.focus()
					return
				}
			}
		}
		document.querySelector("#login").submit();
	}


</script>
	
<div class="jumbotron text-center">
   <h2 class="home_header">스포츠토토 <span class="light">로그인</span></h2>
    		<p class="tagline">건전하게 즐겨보세요</p>
  <form id="login" action="Login2.do">  
  아이디<input id="id" name="id" type="text"
  			 value="${param.id}"  placeholder="아이디를 입력하세요"/><span></span><br>
  비밀번호<input id="pw" name="pw" type="password"  
  			value="${param.pw}" placeholder="비밀번호를 입력하세요"/><span></span><br>
</form>
</div>

      <div class="text-right">
               
    <button type="button" onclick="canLog();" class="btn btn-info">로그인</button>    
    <button class="btn btn-success"  onclick="goInsert()"
      				 type="button">회원가입</button>  </div>  

<table border> 
<c:forEach var="totologin" items="${loginList}"> 
<tr><td>${totologin.id}</td><td>${totologin.pw}</td></tr>
</c:forEach>
</table>
   
  <!-- Copyrights Section -->
  <div class="copyright">&copy;2022 - <strong>BETMAN</strong></div>		

	
  <%
	String logPass = request.getParameter("logPass");
	
	if(logPass!=null && logPass.equals("0")){
		out.println("");
	}else if(logPass!=null && logPass.equals("-1")){
		out.println("");
	}
	
  %>
  <%
String id = request.getParameter("id");
if(id == null) id="";

String pw = request.getParameter("pw");
if(pw==null) pw="";



%>
</body>
</html>