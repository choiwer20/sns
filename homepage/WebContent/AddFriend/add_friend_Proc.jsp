<%@page import="java.util.Vector"%>
<%@page import="Group.GroupDto"%>
<%@page import="Group.GroupDao"%>
<jsp:useBean id="dao" class="Group.GroupDao"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//친구 받아오기
	String userid=(String)request.getParameter("addFriend");
	//친구 확인
	System.out.println("add_friend_Proc.jsp (userid): "+userid);
	String mygroup=request.getParameter("mygroup");
	System.out.println("add_friend_Proc.jsp (mygroup): "+mygroup);
	String myid=request.getParameter("myid");
	
	Vector list=(Vector)dao.getGroup(myid);
	for(int i=0;i<list.size();i++){
	System.out.println("for_friend_Proc.jsp (mygroup): "+mygroup);
		GroupDto dto=(GroupDto)list.get(i);
		
			if(dto.getMyid().equals(myid)){
				System.out.println("if_friend_Proc.jsp (mygroup): "+mygroup);
				if(dto.getGroup().equals(mygroup)){
					System.out.println("if_if_friend_Proc.jsp (mygroup): "+mygroup);
						
					dao.addGroupFriend(dto);		
					
				}
		
			}
	}
	
	/* //GroupDto dto= dao.();
	dao.addGroupFriend(); */
	response.sendRedirect("../AddFriend.jsp");
%>