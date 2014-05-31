<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet"
	href="/homepage/css/components.css">
<link type="text/css" rel="stylesheet"
	href="/homepage/css/responsee.css">
<link type="text/css" rel="stylesheet"
	href="/homepage/css/template-style.css">
<link type="text/css" rel="stylesheet"
	href="/homepage/css/luYzpvna9qk.css" />
<link type="text/css" rel="stylesheet"
	href="/homepage/css/oBwXKrMsLPd.css" />
<link type="text/css" rel="stylesheet"
	href="/homepage/css/k4p1J0mZLFW.css" />
<link type="text/css" rel="stylesheet"
	href="/homepage/css/u4n0TOW16uV.css" />
<link type="text/css" rel="stylesheet"
	href="/homepage/css/aO5MXY7tAfJ.css" />

<script type="text/javascript" src="/homepage/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/homepage/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/homepage/js/modernizr.js"></script>
<script type="text/javascript" src="/homepage/js/responsee.js"></script>

<link href="/homepage/css/bootstrap2.css" rel="stylesheet"
	type="text/css" />
<link href="/homepage/css/1.css" rel="stylesheet" type="text/css" />


</head>
<body>
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
					<jsp:include page="/menu.jsp" />
				</aside>
				<!-- CONTENT -->
				<section class="s-12 l-7">

					<form action="">
						<div align="center">
							<div style="width: 530px; text-align: left;">
								<div class="row">
									<p style="color: red" align="right">*매일 정오업데이트 됩니다.*</p>
									<h1>오늘의 추천 이성</h1>
									<p>&nbsp;</p>
									<div align="center" class="span3">
										<div class="customDiv">
											<img src="/homepage/images/portfolio01.jpg" style="max-width: 200px; max-height: 450px; width: auto; height: auto" />
										</div>
									</div>
									<div class="span3.5">
								<!-- 		<div class="div.custom"> -->
											<p style="padding-bottom: 20px;" align="left;">추천 이성 정보</p>
											<ol style="font-size: 13pt;">
												<li class="customLi">이름 :</li>
												<li class="customLi">나이 :</li>
												<li class="customLi">지역 :</li>
												<li class="customLi">성격 :</li>
												<li class="customLi">스타일 :</li>
											</ol>
											<textarea name="coment" style="width: 280px; height: 150px; resize: none;">작업멘트를 날려라</textarea>
									<!-- 	</div> -->
									</div>
								</div>
							</div>
						</div>

						<p>&nbsp;</p>
						<div align="center">
							<input type="button" style="width: 500px; height: 50px; font-size: 15pt;" class="btn-custom" value="대쉬!!!" />
						</div>
					</form>

				</section>
				<!-- ASIDE NAV 2 -->
				<aside class="s-12 l-five">
					<jsp:include page="/Friend.jsp" />
				</aside>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<footer class="box">
		<jsp:include page="/footer.html" />
	</footer>
</body>
</html>