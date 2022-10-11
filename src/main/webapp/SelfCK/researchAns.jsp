<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀프진단평가 결과</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">

<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>

</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
	<%! int jumsu=0;
		int total=0;
		String level="";
	%>
	
	<%
	for(int i=1; i<10; i++){
		String mind = request.getParameter("mind"+i);
		if(mind.equals("sel1")){
			
			jumsu=0;
		}else if(mind.equals("sel2")){
			
			jumsu=1;
		}else if(mind.equals("sel3")){
			
			jumsu=2;
		}else{
			jumsu=3;
		}
		
		total+=jumsu;
		System.out.print(total+"점");
	}
	%>
	<%--
	<img src="level1.jpg" alt="문제없음" width="300" height="300">
	<img src="level2.jpg" alt="저위험" width="300" height="300">
	<img src="level3.jpg" alt="중위험" width="300" height="300">
	<img src="level4.jpg" alt="문제성도박" width="300" height="300">
	 --%>
	<%
	if(total==0){
		level="문제없음";
	%>
	<img src="level1.jpg" alt="문제없음" width="500" height="500">
	<% 	
	}else if(total>=1 && total<=2){
		level="저위험";
	%>
	<img src="level2.jpg" alt="저위험" width="300" height="300">
	<% 	
	}else if(total>=3 && total<=7){
		level="중위험";
	%>
	<img src="level3.jpg" alt="중위험" width="300" height="300">
	<% 	
	}else{
		level="문제성도박";
	%>
	<img src="level4.jpg" alt="문제성도박" width="300" height="300">
	<% 
	}
	%>
<script type="text/javascript">
	alert(<%=total%>점)
</script>
	
	<h2>
	
	당신의 중독상태는 <br>
	<%=level%>
	<% total=0; %>
	
	</h2>
	

  <!-- Copyrights Section -->
  <div class="copyright">&copy;2022 - <strong>BETMAN</strong></div>		
	
<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
</script>

</body>
</html>