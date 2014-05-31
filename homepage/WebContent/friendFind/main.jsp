<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>Responsive Aside website template</title>

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

<link href="bootstrap.css" rel="stylesheet" />
<%
	String userid=request.getParameter("userid");
%>


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
					<jsp:include page="/menu.jsp" />
				</aside>
				<!-- CONTENT -->
				<section class="s-12 l-7">
					<div class="span12">
						<form action="Frined_Find_Proc.jsp" method="post">
						<div class="span12">
								<div class="navbar-form" align="center"
									style="margin-left: 0px; margin-right: 20px">
									<!-- 모양이 둥근 것  -->
									<input type="text" name="keyField" value=" " style="width: 90%;" class="input-medium search-query" /> &nbsp;&nbsp;
									<!-- 전송버튼 모양 적용한것-->
									&nbsp;&nbsp;<input type="submit" name="smt" value="검색" class="btn" />
								</div>
						</div>
						<div><!-- 공백 -->  </div>
							
							<div align="right">
								
								<input type="radio" name="search" value="id">id&nbsp;&nbsp;&nbsp;
								<input type="radio" name="search" value="name" checked="checked">name
							</div>
								<div class="navbar-form pull-left">
									<!--테두리로 묶어주는것  -->
									<fieldset>
										<input type="text" placeholder="플레이스 홀더" />
										<!-- 버튼 -->
										<button type="submit" class="btn">키필드</button>
									</fieldset>
								</div>
							</form>
								<table
									class="table table-bordered table-hover table-condensed table-striped">
									<caption>친구</caption>
									<thead>
										<tr>
											<th>사진</th>
											<th>이름</th>
											<th>action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#"><img src="img/1.jpg" alt="그림이 없습니다." /></a></td>
											<td><a href="#">친구 1</a></td>
											<td><input type="button" value="action" /></td>
										</tr>
										<tr>
											<td><a href="#"><img src="img/2.jpg" alt="그림이 없습니다." /></a></td>
											<td><a href="#">친구 2</a></td>
											<td><input type="button" value="action" /></td>
										</tr>
										<tr>

											<td><a href="#"><img src="img/3.jpg" alt="그림이 없습니다." /></a></td>
											<td><a href="#">친구 3</a></td>
											<td><input type="button" value="action" /></td>
										</tr>
									</tbody>
								</table>
							</div>
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