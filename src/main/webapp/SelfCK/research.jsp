<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   
    %>
 
<!DOCTYPE html>
<html>
<head>   
<meta charset="UTF-8">
<title>셀프 진단평가</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

h1, h3, h4{
    font-family: 'Jeju Gothic', sans-serif;
}  

submit{
 background-color: #8181F7;
  color: white;
 padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
</style>
<link rel="stylesheet" type="text/css" href="css/Main_css.css">
</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>

<script type="text/javascript">
function goAns(){
	location.href="webapp\\SelfCK\\researchAns.jsp";
}
</script>

<%
String arr[]={
		"1. 도박에서 잃어도 크게 상관없는 금액 이상으로 도박을 한 적이 있습니까?",
		"2. 도박에서 이전과 같은 흥분감을 느끼기 위해 더 많은 돈을 걸어야 했던 적이 있습니까?",
		"3. 도박으로 잃은 돈을 만회하게 위해 다른 날 다시 도박을 하신 적이 있습니까?",
		"4. 도박자금을 마련하기 위해 돈을 빌리거나 무엇인가를 판 적이 있습니까?",
		"5. 자신의 도박행위가 문제가 될 만한 수준이라고 느낀적이 있습니까?",
		"6. 도박으로 인한 스트레스나 불안 등을 포함한 어떤 건강 상의 문제를 겪은 적이 있습니까?",
		"7. 사실 여부에 상관없이 다른 사람들로부터 도박행위를 비난 받거나 도박 문제가 있다는 얘기를 들은 적이 있습니까?",
		"8. 도박행위로 인해 본인이나 가정에 재정적인 문제가 발생한 적이 있습니까?",
		"9. 자신의 도박하는 방식이나 도박을 해서 발생한 일에 대한 죄책감을 느낀 적이 있습니까?"	
		};

String ans[]={"없음", "가끔","때때로","거의항상"};
	int i=1;
	int j=1;
	String groupname="";
	String selname="";
%>

<h1>셀프 진단평가</h1>
<h3>
스스로 진단하고 평가해요!
자신의 게임성향을 진단하고 게임몰입도를 점검해보세요.
</h3>
<h4>
지난 1년 동안에 대해 생각해 보고, 해당하는 항목을 선택해 주세요.
</h4>

<textarea rows="5" cols="70" style="background-color:transparent">
도박이란 돈이나 가치있는 소유물을 걸고 결과가 불확실한 사건에 내기를 거는 행위를 뜻합니다.
예를 들면 체육진흥투표권(스포츠토토), 복권, 경마, 카지노 등을 도박이라고 할 수 있습니다.
</textarea>

  <form method="post" action="researchAns.jsp">
  
<table>
	<%
		for(String data:arr){
			groupname = "mind"+i;
	%>
	
	<tr>
		<th>셀프 진단 평가: <%=data%></th>
	</tr>
	<tr>
		<%
			for(String str:ans){
					selname="sel"+j;
		%>
		
		<td><input type="radio" name=<%=groupname%> value=<%=selname%>>
				<label><%=str%></label></td>
		
		<%			
			j+=1;	
				}
		%>
	</tr>
	
	<%	
		j=1;
		i+=1;
		}
	%>
</table>
	<input type="submit" value="결과보기"/>
	</form>
	<!-- About Section -->
 		<section class="about" id="about">
   		  <h2 class="hidden">About</h2>
		 
    </section>
		

  
  
  <!-- Copyrights Section -->
  <div class="copyright">&copy;2022 - <strong>BETMAN</strong></div>		
<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
</script>

</body>
</html>