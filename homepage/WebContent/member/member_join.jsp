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

<link href="/homepage/css/bootstrap2.css" rel="stylesheet" />
<link href="/homepage/css/1.css" rel="stylesheet" />
<script src="/homepage/js/jquery-2.1.1.min.js"></script>
<script src="/homepage/js/bootstrap.js"></script>



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
				<section class="s-12 l-7">
					<div class="line">
		<div class="container">
		<h1>회원가입</h1>
		<br />
		<br />
		<div class="row">
			<div class="span12">
				<div class="span4" style="margin-right: 60px;" align="center">

					<div class="customDiv2" align="center">
						<img src="/homepage/images/portfolio03.jpg" style="max-width: 340px; max-height: 300px;" /> 
						<br /><br /> 
						<input type="button" value="이미지 찾기" align="left" class="btn-custom" style="width: 100px; height: 30px" />
					</div>
				</div>

				<div class="span7" style="margin-right: 0;">
					<table align="center">
						<tr>
							<td style="padding-right: 70px">아이디</td>
							<td><input type="text" style="width: 300px" id="id" /></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" style="width: 300px" id="name" /></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" style="width: 300px" id="pw1" /></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" style="width: 300px" id="pw2" /></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type="text" style="width: 300px" id="tel"></input></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" style="width: 300px" id="addr" /></td>
						</tr>
						<tr>
							<td>상세주소</td>
							<td><input type="text" style="width: 300px" id="addr" /></td>
						</tr>
						<tr>
							<td>생년월일</td>
							<td><input type="text" style="width: 300px" id="b" /></td>
						</tr>
						<tr>
							<td>성별</td>
							<td>
								<div class="btn-group" data-toggle="buttons-radio">
									<button class="btn" align="center">남성</button>
									<button class="btn">여성</button>
								</div>
							</td>
						</tr>
					</table>

					</form>
					</tr>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<div class="container">
		<div class="row">
			<div class="span12" align="center">
				<div class="span-cus">
					<input type="submit" name="exam2" value="세부정보 입력" onclick="javascript:location.href='member_join2.jsp';" class="btn-custom" style="width: 150px; height: 35px" /> <br />
					<br />
					<p align="left">*세부정보 입력시에만 이성추천을 해드립니다.</p>
					<P align="left">*추후 수정 및 추가 가능 합니다.</P>
				</div>
				<div class="span-cus">
					<input type="submit" name="exam2" value="가입 완료" class="btn-custom"
						style="width: 150px; height: 35px" />
				</div>
				<div class="span-cus">
					<input type="button" name="exam2" value="취소" class="btn-custom"
						style="width: 150px; height: 35px" />
				</div>
			</div>
		</div>
	</div>
		
	</div>
				</section>
				<!-- ASIDE NAV 2 -->
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<footer class="box">
		<jsp:include page="/footer.html"/>
	</footer>

</body>
</html>