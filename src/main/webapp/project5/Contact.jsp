<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toto</title>
<%--link href="${path}/a00_com/a01_common.css" rel="stylesheet"> --%>

<link rel="stylesheet" type="text/css" href="css/Contact.css">
<style>
    
</style>
<script src="http://use.edgefonts.net/source-sans-pro:n2:default.js" type="text/javascript"></script>
  
<script type="text/javascript" src="/js/jquery-1.5.2.min.js"></script>

<script type="text/javascript" src="/js/jquery-ui-1.8.12.custom.min.js"></script>
<script src="jQueryAssets/jquery-1.11.1.min.js"></script>
<script src="jQueryAssets/jquery.ui-1.10.4.tabs.min.js"></script>
<link type="text/css" href="/js/css/ui-lightness/jquery-ui-1.8.12.custom.css" rel="stylesheet" />
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.tabs.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript"></script>
</head>
<body>
	<form>
	<div class="container">
	<h4 class="logo">BETMAN</h4>
		<header> <a href="#home">
			</a>
			<nav>
				<ul>
					<li><a href="Main.jsp">HOME</a></li>
					<li><a href="Info.jsp">ABOUT</a></li>
					<li><a href="#home">CONTACT</a></li>
					<li><a href="">ORDER NOW</a></li>
				</ul>
			</nav>
		</header>
		 <!-- Home Section -->
		<section class="home" id="home">
			<script>
				var cssApplier;
				window.onload = function(){
					rangy.init();
					cssApplier = rangy.createCssClassApplier("someClass", true); //true turns on normalization
			});
			</script>
			<h2 class="home_header">빅데이터 <span class="light">도박관리센터</span></h2>
		</section>

  <footer>
   <article class="footer_column">
      <a href="../infop/Info.html"><img src="img/r1.png" alt="" width="800" height="400"></a>
    </article>
   
      <article class="footer_column">
      <a href="../infop/Info.html"><img src="img/r2.png" alt="" width="800" height="400"></a>
    </article>
    
       <article class="footer_column">
      <a href="../infop/Info.html"><img src="img/r3.png" alt="" width="800" height="400"></a>
    </article>
    
     <article class="footer_column">
      <a href="../infop/Info.html"><img src="img/r4.png" alt="" width="800" height="400"></a>
    </article>
  </footer>
  <!-- Footer Section -->
  <section class="footer_banner" id="contact">
    <h2 class="hidden">Footer Banner Section </h2>
    <p class="home_header">데이터 &amp; 분석</p>
    <div OnClick="location.href='#home'" class="button">CONTACT</div>
  </section>
  <!-- Copyrights Section -->
  <div class="copyright">&copy;2022 - <strong>BETMAN</strong></div>		
	</div>
	</form>
</body>
</html>