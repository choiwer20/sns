<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<%

	String myid=request.getParameter("myid");
	String userid=request.getParameter("userid");
	int num=Integer.parseInt(request.getParameter("num"));
	//System.out.println("test");
	System.out.println(" Group_Create num:"+num);
	//System.out.println(" Group_Create myid:"+myid);
	//System.out.println(" Group_Create userid:"+userid);
%>
</head>
<body>
<b>이리로 옵니까?</b>
	<div>
		<form action="Group_Create_Proc.jsp" method="post">
			<input type="hidden" name="num" value="<%=num%>">
			<input type="hidden" name="myid" value="<%=myid%>">
			<input type="hidden" name="userid" value="<%=userid%>">
			   
			<table border="1">
				<tr>	
				<td><input type="radio" name="group" value="School">School</td>
				<td><input type="radio" name="group" value="House">House</td>
				<td><input type="radio" name="group" value="Office">Office</td>
				<td><input type="radio" name="group" value="Academy">Academy</td>
				</tr>
				<input type="submit" value="확인"/>
		</table>	
	</form>
	</div>
</body>
</html>