<%@page import="java.util.Vector"%>
<%@page import="Group.GroupDto"%>
<%@page import="Group.GroupDao"%>
<jsp:useBean id="dao" class="Group.GroupDao"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id="groupDto" class="Group.GroupDto"></jsp:useBean>
<%
	//ģ�� �޾ƿ���
	String userid=(String)request.getParameter("addFriend");
	String mygroup=request.getParameter("mygroup");
	String myid=request.getParameter("userid1");
	//System.out.println("add_friend myid:"+myid);
	//GroupDto ����
		groupDto.setGroup(mygroup);
		groupDto.setMyid(myid);
		groupDto.setUserid(userid);
	
	//ģ�� �߰��� �������
	dao.addGroupFriend(groupDto);
	
	//Vector list=(Vector)dao.getCompleteGroup(myid);
	
	
	/* //GroupDto dto= dao.();
	dao.addGroupFriend(); */
	response.sendRedirect("../AddFriend.jsp");
%>