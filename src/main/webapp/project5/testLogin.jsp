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
<title>회원가입 및 회원조회</title>
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
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>


<div class="jumbotron text-center">
 <h2 class="home_header">스포츠토토 <span class="light">회원가입 및 회원조회</span></h2>

</div>
 아이디<input name="id" type="text"
  			 value="${MEMBERtoto.id}"  placeholder="아이디를 입력하세요"/><span></span><br>
 비밀번호<input name="pw" type="password"  
  			value="${MEMBERtoto.pw}" placeholder="비밀번호를 입력하세요"/><span></span><br>
 이름<input name="name" type="text"
  			 value="${MEMBERtoto.name}"  placeholder="이름을 입력하세요"/><span></span><br>
 이메일<input name="email" type="password"  
  			value="${MEMBERtoto.email}" placeholder="이메일을 입력하세요"/><span></span><br>

      <div class="text-right">
          <button type="button" onclick="insertProc()" class="btn btn-success">등록</button>             
            <button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>    
      </div>  
   </form>
   <table>
   <tr><td>{$MEMBERtoto.id}</td>
   		<td>{$MEMBERtoto.name}</td><td>{$MEMBERtoto.email}</td></tr>
   </table>
</div>
<script type="text/javascript">
function insertProc(){
	if(confirm("회원가입 하시겠습니까?")){
		$("form").attr("action", "${path}/");
		$("form").submit();
	}
}


	function goMain(){
	      location.href="${path}/emp.do?method=list";
	   }	
</script>
</body>
</html>