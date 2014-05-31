<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width"> 
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Responsive Aside website template</title>
<link type="text/css" rel="stylesheet" href="/homepage/css/components.css">
<link type="text/css" rel="stylesheet" href="/homepage/css/responsee.css"> 
<link type="text/css" rel="stylesheet" href="/homepage/css/template-style.css">  
<link type="text/css" rel="stylesheet" href="/homepage/css/luYzpvna9qk.css" />  
<link type="text/css" rel="stylesheet" href="/homepage/css/oBwXKrMsLPd.css" />  
<link type="text/css" rel="stylesheet" href="/homepage/css/k4p1J0mZLFW.css" />
<link type="text/css" rel="stylesheet" href="/homepage/css/u4n0TOW16uV.css" />  
<link type="text/css" rel="stylesheet" href="/homepage/css/aO5MXY7tAfJ.css" />  

 <script type="text/javascript" src="/homepage/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/homepage/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/homepage/js/modernizr.js"></script>
<script type="text/javascript" src="/homepage/js/responsee.js"></script>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.poptrox.min.js"></script>
<script src="js/config.js"></script>
<script src="js/skel.min.js"></script>
<link type="text/css" rel="stylesheet" href="photo.css" />   

</head>
<body class="size-1140">
	<!-- TOP NAV WITH LOGO -->
	<header>
		<nav>
			<div class="line">
				<div class="s-12 l-2">
					<img class="s-5 l-12 center" src="/homepage/images/logo.png">
				</div>
				
			</div>
		</nav>
	</header>
	<!-- ASIDE NAV AND CONTENT -->
	<div class="line">
		<div class="box  margin-bottom">
			<div class="margin">
				<!-- ASIDE NAV 2 -->
				<aside class="s-12 l-five">
					<jsp:include page="/menu.jsp"/>
				</aside>
				<!-- CONTENT -->
				<section class="s-12 l-7">
		<div id="main">
				<div id="reel">
					
					<!-- Thumb Items -->
						<article class="item thumb" data-width="250">
							<h2>You really got me</h2>
							<a href="images/fulls/01.jpg"><img src="images/thumbs/01.jpg" alt="" ></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>Ad Infinitum</h2>
							<a href="images/fulls/02.jpg"><img src="images/thumbs/02.jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>Different.</h2>
							<a href="images/fulls/03.jpg"><img src="images/thumbs/03.jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>Elysium</h2>
							<a href="images/fulls/04.jpg"><img src="images/thumbs/04.jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>Kingdom of the Wind</h2>
							<a href="images/fulls/05.jpg"><img src="images/thumbs/05.jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>The Pursuit</h2>
							<a href="images/fulls/06.jpg"><img src="images/thumbs/06.jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>Boundless</h2>
							<a href="images/fulls/07.jpg"><img src="images/thumbs/07.jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="250">
							<h2>The Spectators</h2>
							<a href="images/fulls/08.jpg"><img src="images/thumbs/08.jpg" alt=""></a>
						</article>
				</div>
			</div>		
				</section>
				<!-- ASIDE NAV 2 -->
				<aside class="s-12 l-five">
					<jsp:include page="/Friend.jsp"/>
				</aside>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<footer class="box">
		<jsp:include page="/footer.html"/>
	</footer>

</body>
</html>