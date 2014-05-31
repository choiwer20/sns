<%@ page contentType="text/html; charset=EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<link href="/homepage/css/bootstrap.css" rel="stylesheet" type="text/css" />

<style>
	.customDiv{width: 380px; height: 400px; display: table-cell; text-align: center; vertical-align: middle;text-align: left;}
	.customLi{padding-bottom: 20px;}
	.btn-custom {
  background-color: hsl(0, 100%, 82%) !important;
  width: 300px;
  height: 50px
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#fecccc", endColorstr="#fea3a3");
  background-image: -khtml-gradient(linear, left top, left bottom, from(#fecccc), to(#fea3a3));
  background-image: -moz-linear-gradient(top, #fecccc, #fea3a3);
  background-image: -ms-linear-gradient(top, #fecccc, #fea3a3);
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fecccc), color-stop(100%, #fea3a3));
  background-image: -webkit-linear-gradient(top, #fecccc, #fea3a3);
  background-image: -o-linear-gradient(top, #fecccc, #fea3a3);
  background-image: linear-gradient(#fecccc, #fea3a3);
  border-color: #fea3a3 #fea3a3 hsl(0, 100%, 80%);
  color: #333 !important;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.13);
  -webkit-font-smoothing: antialiased;
  border-radius: 0.5em;
}
</style>

</head>

<body>
	<form action="">
		<div align="center">
			<div style="width: 940px; text-align: left;">
				<div class="row">
					<p style="font-size: 13pt; color: red" align="right">*매일 정오 업데이트 됩니다.*</p>
					<h1>오늘의 추천 이성</h1>
					<p>&nbsp;</p>
					<div align="center" class="span5">
						<div class="customDiv">
							<img src="Pictures/image/1.jpg" style="max-width: 380px; max-height: 450px; width: auto; height: auto" />
						</div>
					</div>
					<div class="span7">
					
						<div class="div.custom">
							<p style="font-size: 15pt;padding-bottom: 20px;" align="left;">추천 이성 정보</p>
							<ol style="font-size: 13pt;">
								<li class="customLi">이름 :</li>
								<li class="customLi">나이 :</li>
								<li class="customLi">지역 :</li>
								<li class="customLi">성격 :</li>
								<li class="customLi">스타일 :</li>
							</ol>
							<textarea name="coment"
								style="width: 450px; height: 150px; resize: none;">작업멘트를 날려라</textarea>
						</div>
					</div>
				</div>
			</div>
		</div>

		<p>&nbsp;</p>
		<div align="center">
			<input type="button"
				style="width: 865px; height: 50px; font-size: 15pt;"
				class="btn-custom" value="대쉬!!!" />
		</div>
	</form>
</body>
</html>