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
<!-- 내 아이디와 구룹을 가져 옴 -->
<jsp:useBean id="fdto" class="Group.FriendDto"></jsp:useBean>

</head>

<body>
		<form action="./AddFriend/add_friend_Proc.jsp" method="post">
		<!--  <input type="hidden" name="u"-->
		<%=request.getParameter("group")%>구룹의 친구 추구:
 		<%
						//아이디를 가져오기  
 						String myid=request.getParameter("myid");
				   	   	//구룹명 가져오기
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
     <br/><br/>구룹에 해당친구를 추가하시겠습니까?<br/><br/>
  		
	<!-- // userid1 userid2 friends --> 
	<!-- userid1 내 아이디 -->
  	<input type="hidden" name="userid1" value="<%=myid%>">
  	<!-- 구룹 -->
  	<input type="hidden" name="mygroup" value="<%=request.getParameter("group")%>">
  	<!-- 구룹 -->
  	<input type="submit" value="OK" onclick="javascript:selfclose()"/>&nbsp;
  	<input type="button" value="NO" onclick="javascript:selfclose()"/><br/>
	</form>
  	
</body>
</html>