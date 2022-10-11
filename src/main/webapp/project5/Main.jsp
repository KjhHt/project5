<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Betman</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/Main.css">
<style>
td{text-align:center;}
</style>
</head>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
timer();
var current=0;
var $interval;
function timer(){
  var $interval=setInterval(function(){slide()},2000);                        
}
function slide(){
  $(".bannerbox").animate({left:"200px"},4000,function(){
    $(this).css({"left":1000});
    $(".bannerbox").append( $("li").children("li").eq(0) );
  });    
  current++;
  if(current==5)current=0;
} 
});
</script>
<body>
<jsp:include page="topNav.jsp"></jsp:include>
	<form>
		<div class="container">
			<!-- Home Section -->
			<section class="home" id="home">
				<h1 class="home_header">
					BET <span class="light">MAN</span>
				</h1>
				<p class="tagline">한경기구매! 싱글플레이!</p>
			</section>
			
			<div class="slidebanner">
			 <ul class="bannerbox">    
			    <li class="rollli"><img src="img\banner1.PNG" alt="dw" class="static" /></li>
			  </ul>
			</div>
			<div class="slidebanner">
			 <ul class="bannerbox">    
			    <li class="rollli"><img src="img\banner2.PNG" alt="dw" class="static" /></li>
			  </ul>
			</div>
			
			
			<footer>
				<article class="footer_column">
					<h3>적중결과</h3>
					<a href="infop/Info.html"><img src="img\result.PNG" alt=""
						width="400" height="200" class="cards"/>
					</a>
				</article>
				<article class="footer_column">
					<h3>토토카페</h3>
					<a href="Order/Order.html"><img src="img\cafe.PNG" alt=""
						width="400" height="200" class="cards" /></a>
				</article>
			</footer>
			<!-- Footer Section -->
			<section class="footer_banner" id="contact">
				<h2 class="hidden">Footer Banner Section</h2>
				<p class="home_header">데이터 &amp; 분석</p>
				<div OnClick="location.href='Contact.jsp'" class="button">CONTACT</div>
			</section>
			<!-- Copyrights Section -->
			<div class="copyright">
				&copy;2022 - <strong>BETMAN</strong>
			</div>
		</div>
	</form>
</body>
</html>