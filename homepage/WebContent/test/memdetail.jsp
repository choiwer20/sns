<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<script src="script/jquery-2.1.1.min.js"></script>
<script src="script/bootstrap.js"></script>
<link href="/homepage/css/bootstrap2.css" rel="stylesheet" />
<link href="/homepage/css/1.css" rel="stylesheet" />
</head>
<body>

<div class="container">
	<div class="row">
		<h2>세부정보 입력</h2>
	<div class="span12">
			<h3>본인의 세부정보</h3>
			<table  align="center" >
			<tr>
				<td style="width: 50px">혈액형</td>
				<td>
					<div class="btn-group" data-toggle="buttons-radio">
					  <button class="btn">A형</button>
					  <button class="btn">B형</button>
					  <button class="btn">O형</button>
					  <button class="btn">AB형</button>
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>신장</td>
				<td>
					<div>
						<input type="text" name="height" value="" />Cm
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>체중</td>
				<td>
					<div>
						<input type="text" name="height" value="" />Kg
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2">MBTI로 본 본인의 성격(하나만 선택하세요)</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="btn-group" data-toggle="buttons-radio">
					  <button class="btn">세상의 소금형</button>
					  <button class="btn">임금 뒷편의 권력형</button>
					  <button class="btn">예언자형</button>
					  <button class="btn">과학자형</button>
					  <button class="btn">백과사전형</button>
					  <button class="btn">성인군자형</button>
					  <button class="btn">잔다르크형</button>
					  <button class="btn">아이디어뱅크형</button>
					<span style="line-height: 1px"><br></br></span>
					  <button class="btn">수완좋은 활동가형</button>
					  <button class="btn">사교적인 유형</button>
					  <button class="btn">스파크형</button>
					  <button class="btn">발명가형</button>
					  <button class="btn">사업가형</button>
					  <button class="btn">친선도모형</button>
					  <button class="btn">언변능숙형</button>
					  <button class="btn">지도자형</button>
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2">스타일</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="btn-group" data-toggle="buttons-radio">
					  <button class="btn">도도한</button>
					  <button class="btn">섹시한</button>
					  <button class="btn">귀여운</button>
					  <button class="btn">차가운</button>
					  <button class="btn">시크한</button>
					  <button class="btn">까칠한</button>
					  <button class="btn">로맨틱</button>
					  <button class="btn">유머러스</button>
					  <button class="btn">자상한</button>
					</div>
				</td>
			</tr>
			</table>
		</div>
		</div>
		</div>
		<br/>
<div class="container">
	<div class="row">
		<div class="span12">
		<h3>선호하는 이성의 세부정보</h3>
			<table align="center" >
			<tr>
				<td style="width: 50px">혈액형</td>
				<td >
					<div class="btn-group" data-toggle="buttons-radio">
					  <button class="btn">A형</button>
					  <button class="btn">B형</button>
					  <button class="btn">O형</button>
					  <button class="btn">AB형</button>
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>신장</td>
				<td>
					<div>
						<input type="text" name="height1" value="" />Cm ~ <input type="text" name="height2" value="" />Cm
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>체중</td>
				<td>
					<div>
						<input type="text" name="height1" value="" />Kg ~ <input type="text" name="height2" value="" />Kg
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2">MBTI로 본 원하는 상대의 성격</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="btn-group" data-toggle="buttons-radio">
					  <button class="btn">세상의 소금형</button>
					  <button class="btn">임금 뒷편의 권력형</button>
					  <button class="btn">예언자형</button>
					  <button class="btn">과학자형</button>
					  <button class="btn">백과사전형</button>
					  <button class="btn">성인군자형</button>
					  <button class="btn">잔다르크형</button>
					  <button class="btn">아이디어뱅크형</button>
								  <span style="line-height: 1px"><br></br></span>
						<button class="btn">수완좋은 활동가형</button>
					  <button class="btn">사교적인 유형</button>
					  <button class="btn">스파크형</button>
					  <button class="btn">발명가형</button>
					  <button class="btn">사업가형</button>
					  <button class="btn">친선도모형</button>
					  <button class="btn">언변능숙형</button>
					  <button class="btn">지도자형</button>
					</div>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2">원하는 상대의 스타일</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="btn-group" data-toggle="buttons-radio">
					  <button class="btn">도도한</button>
					  <button class="btn">섹시한</button>
					  <button class="btn">귀여운</button>
					  <button class="btn">차가운</button>
					  <button class="btn">시크한</button>
					  <button class="btn">까칠한</button>
					  <button class="btn">로맨틱</button>
					  <button class="btn">유머러스</button>
					  <button class="btn">자상한</button>
					</div>
				</td>
			</tr>
			</table>
		</div>		
		</div>		
		</div>		
		<br/>
<div class="container">
	<div class="row">
		<div class="span12" >
			<div align="center">
			<input class="btn-custom" type="submit" value="가입 완료" style="width: 150px;height:35px" />&nbsp;&nbsp;&nbsp;
			<input class="btn-custom" type="reset" value="취소" style="width: 150px;height:35px" />
			</div>
		</div>
	</div>
</div>
</body>
</html>