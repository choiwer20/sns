<%@page import="Group.GroupDao"%>
<%@page import="Group.GroupDao"%>
<%@page import="java.util.Vector"%>
<%@page import="Group.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	function selfclose(){
		window.close();
	}
</script>
<!-- �� ���̵�� ������ ���� �� -->
<jsp:useBean id="fdto" class="Group.FriendDto"></jsp:useBean>

</head>

<body>
		<form action="./AddFriend/add_friend_Proc.jsp" method="post">
		<!--  <input type="hidden" name="u"-->
		<%=request.getParameter("group")%>������ ģ�� �߱�:
 		<%
						//���̵� ��������  
 						String myid=request.getParameter("myid");
				   	   	//����� ��������
						String group=request.getParameter("group");
				 		//System.out.println("[");
				 		System.out.println("AddFriend myid:"+myid);
				 		System.out.println("AddFriend group:"+group);
				   		//System.out.println("]");
				 		GroupDao fdao=new GroupDao();
				    	Vector fgroup=fdao.getFriends(myid);
				    	
				    	if(fgroup.isEmpty()){
		%>
    						<b>no friend</b>
    	
    	<%
    	 		   		} else {
    	%>
    	
    						<select name="addFriend">
    	<%
    						for(int i=0;i<fgroup.size();i++){
    	   						fdto=(Group.FriendDto)fgroup.get(i);
    	%>

								<option value="<%=fdto.getUserid2()%>"><%=fdto.getUserid2()%></option>
   		<%
    						}
    					}
    	%>
    </select>  
     <br/><br/>���쿡 �ش�ģ���� �߰��Ͻðڽ��ϱ�?<br/><br/>
  		
	<!-- // userid1 userid2 friends --> 
	<!-- userid1 �� ���̵� -->
  	<input type="hidden" name="userid1" value="<%=myid%>">
  	<!-- ���� -->
  	<input type="hidden" name="mygroup" value="<%=request.getParameter("group")%>">
  	<!-- ���� -->
  	<input type="submit" value="OK" onclick="javascript:selfclose()"/>&nbsp;
  	<input type="button" value="NO" onclick="javascript:selfclose()"/><br/>
	</form>
  	
</body>
</html>