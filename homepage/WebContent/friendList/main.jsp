<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
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
						<div class="move">
						<div class="row">
							<h3>요청된 친구목록</h3>
							<div class="span10" align="center">
								<table
									class="table table-bordered table-hover table-condensed table-striped">
									<tbody>
										<tr>
											<td width="50" style="word-break: break-all"><img
												src="img/3.jpg" alt="그림이 없습니다." style="margin-right: 10px" /><a
												href="#">이름</a></td>
											<td width="50" style="word-break: break-all"><h6>Japen</h6></td>
											<td width="50" style="word-break: break-all"><input
												type="button" value="yes" />&nbsp;&nbsp;<input
												type="button" value="no" /></td>
										</tr>
										<tr>
											<td width="50" style="word-break: break-all"><img
												src="img/1.jpg" alt="그림이 없습니다." style="margin-right: 10px" /><a
												href="#">이름</a></td>

											<td width="50" style="word-break: break-all"><h6>United
													States</h6></td>
											<td width="50" style="word-break: break-all"><input
												type="button" value="yes" />&nbsp;&nbsp;<input
												type="button" value="no" /></td>
										</tr>
										<tr>

											<td width="50" style="word-break: break-all"><img
												src="img/2.jpg" alt="그림이 없습니다." style="margin-right: 10px" /><a
												href="#">이름</a></td>

											<td width="50" style="word-break: break-all"><h6>서울시
													강남구</h6></td>
											<td width="50" style="word-break: break-all"><input
												type="button" value="yes" />&nbsp;&nbsp;<input
												type="button" value="no" /></td>
										</tr>
									</tbody>
								</table>

								<br />
								<hr />
							</div>
						</div>
					</div>


					<div class="move">
						<div class="row">
							<h3>친구목록</h3>
							<div class="span10" align="center">
								<table
									class="table table-bordered table-hover table-condensed table-striped">
									<tbody>
										<tr>
											<td width="50" style="word-break: break-all"><img
												src="img/3.jpg" alt="그림이 없습니다." style="margin-right: 10px" /><a
												href="#">이름</a></td>
											<td width="50" style="word-break: break-all"><a href="#">@@</a></td>
											<td width="50" style="word-break: break-all"><input
												type="button" value="관리" /></td>
										</tr>
										<tr>
											<td width="50" style="word-break: break-all"><img
												src="img/1.jpg" alt="그림이 없습니다." style="margin-right: 10px" /><a
												href="#">이름</a></td>

											<td width="50" style="word-break: break-all"><a href="#">@@</a></td>
											<td width="50" style="word-break: break-all"><input
												type="button" value="관리" /></td>
										</tr>
										<tr>

											<td width="50" style="word-break: break-all"><img
												src="img/2.jpg" alt="그림이 없습니다." style="margin-right: 10px" /><a
												href="#">이름</a></td>

											<td width="50" style="word-break: break-all"><a href="#">$$</a></td>
											<td width="50" style="word-break: break-all"><input
												type="button" value="관리" /></td>
										</tr>
									</tbody>
								</table>
							</div>
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