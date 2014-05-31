<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<b>Con test</b>
<%
	try{
	   Context initCnt = new InitialContext();
	   DataSource ds = (DataSource)new InitialContext().lookup("java:comp/env/jdbc/mysqlDB");
	   Connection con=ds.getConnection();
	   
	   if(con!=null){
		   System.out.println("connection ok!");
		   
	   }
	   
	  } catch(Exception err) {
	   
		   System.out.println("connection false:"+err);
		 // e.printStackTrace();
	  }
	  

%>
</body>
</html>