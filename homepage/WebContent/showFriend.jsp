<%@page import="java.util.Vector"%>
<%@page import="Group.GroupDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<jsp:useBean id="dao" class="Group.GroupDao"/> 
<%
	
	String myid=request.getParameter("myid");
	String mygetGroup=request.getParameter("mygetGroup");
	
	//Vector friendList=(Vector)dao.getCompleteGroup(myid);
	System.out.println("showFriend(mygetGroup): "+mygetGroup);
	
	if(mygetGroup.equals(request.getParameter("mygetGroup"))){
		
			//System.out.println(" check in if entered.............................................");
			//System.out.println(friendList.size());
		
			//for(int j=0;j<friendList.size();j++) {
					
				//	GroupDto dto=(GroupDto)friendList.get(j);
	//				System.out.println("Show:"+dto.getUserid());
%>										
						<!--  <tr><td><font><%--<%=dto.getUserid()%>--%></font></td></tr>-->
<%
			}
	//}
	//	session.setAttribute("friendList", friendList);
		response.sendRedirect("Friend.jsp");
%>