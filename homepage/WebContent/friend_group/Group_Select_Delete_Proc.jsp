<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="Group.GroupDao"></jsp:useBean>
<%


	String[] check1 = request.getParameterValues("checkbox");
	System.out.println("check1.length"+check1.length);
	int [] check2 = new int[check1.length];

	for(int i=0; i<check1.length; i++){
	System.out.println("Group_Select_Delete_Proc.jsp check1:"+check1[i]);
	check2[i] = Integer.parseInt(check1[i]);
	System.out.println("Group_Select_Delete_Proc.jsp check2:"+check2[i]);
	dao.deleteGroup(check2);
	}

	response.sendRedirect("../Friend.jsp");

%>
<b>Group_Delete_Proc.jsp 여기로 왔따..</b>