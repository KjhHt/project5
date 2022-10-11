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
<style>
td{text-align:center;}
body{text-align:center;}
.tbl_type,.tbl_type th,.tbl_type td{border:0}
.tbl_type a{color:#383838;text-decoration:none}
.tbl_type{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
.tbl_type caption,.tbl_type .frm label{display:none}
.tbl_type th{padding:5px 0 4px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:18px;vertical-align:top}
.tbl_type td{padding:8px 0 5px;border-bottom:solid 1px #d2d2d2;text-align:center}
.tbl_type .frm{padding:0;text-align:center}
.tbl_type .frm input{margin:0}
.tbl_type .num,.tbl_type .date,.tbl_type .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
.tbl_type .title{text-align:center}
.tbl_type .title .pic,.tbl_type .title .new{margin:0 0 2px;vertical-align:middle}
.tbl_type tr.reply .title a{padding-left:12px;background:url(img/ic_reply.gif) 0 1px no-repeat}
.tbl_type tr.reply td a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
.answer {
    display: none;
    padding-bottom: 30px;
 }
#faq-title {
    font-size: 25px;
  }
.faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
.question {
    font-size: 19px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
.question:hover {
    color: #2962ff;
  }
[id$="-toggle"] {
    margin-right: 15px;
  }
</style>
<script type="text/javascript">
	  const items = document.querySelectorAll('.question');
	  function openCloseAnswer() {
	    const answerId = this.id.replace('que', 'ans');

	    if(document.getElementById(answerId).style.display === 'block') {
	      document.getElementById(answerId).style.display = 'none';
	      document.getElementById(this.id + '-toggle').textContent = '+';
	    } else {
	      document.getElementById(answerId).style.display = 'block';
	      document.getElementById(this.id + '-toggle').textContent = '-';
	    }
	  }
	  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
</head>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<br>
<br>
<br>
<div class="jumbotron text-center">
  <h2>FAQ</h2>

</div>
<div class="">
	<!-- 
	form action="호출할 controller url"
	   name="subject"  name="writer"    -->
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input class="form-control mr-sm-2" name="bt_question" placeholder="질문입력하세요" 
	    	value="${param.bt_question}"/>
	    	<!-- controller  public String boardList(Board sch)-->
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
	
   <table class="table table-hover table-striped">
    <thead>
      <tr class="table-success text-center">
        <th>질문</th>
        <th>답변</th>
      </tr>
    </thead>
	</table>   
	<span id="faq-title">자주 묻는 질문(FAQ)</span>
	
<div class="faq-content">
  <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>'HTML'이란 무엇인가요?</span></button>
  <div class="answer" id="ans-1">하이퍼텍스트 마크업 언어(HyperText Markup Language)입니다.</div>
</div>

    	<div class="faq-content">
    		<c:forEach var="bd" items="${blist}">
    				<button class="question" id="que-1">
    					<span id="que-1-toggle">+</span>
    					<span>${bd.bt_question}</span>
    				</button>
    			<div class="answer" id="ans-1">${bd.bt_answer}</div>
    		</c:forEach>
    	</div>
    	
    	

    
</div>
</body>
</html>