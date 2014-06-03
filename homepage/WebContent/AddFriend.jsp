<%@page import="Friend.FriendDao"%>
<%@page import="java.util.Vector"%>
<%@page import="Friend.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	function close(){
		self.opener = self;
		window.close();
	}
</script>
<!-- 내 아이디와 구룹을 가져 옴 -->
<jsp:useBean id="fdto" class="Friend.FriendDto"></jsp:useBean>

</head>

<body>
		<form action="./AddFriend/add_friend_Proc.jsp" method="post">
		<!--  <input type="hidden" name="u"-->
		friend Add:
 		<% 
   	   	String myid=request.getParameter("myid");
   	   	String group=request.getParameter("group");
 		//test by myid
   	   	//String myid="ImJAVA";
   		//System.out.println("[");
 		//System.out.println("AddFriend myid:"+myid);
 		//System.out.println("AddFriend group:"+group);
   		//System.out.println("]");
 		
 		
 		FriendDao fdao=new FriendDao();
    	Vector fgroup=fdao.getFriends(myid);
    	
    	
		
    	if(fgroup.isEmpty()){
    	
    	%>
    		<b>no friend</b>
    	
    	<% 	
    	} else {%>
    	
    	<select name="addFriend">
    	<%
    		for(int i=0;i<fgroup.size();i++){
   				fdto=(FriendDto)fgroup.get(i);
   		%>

			<option value="<%=fdto.getUserid2()%>"><%=fdto.getUserid2()%></option>
   		<%
    			}
    	}
    	%>
    </select>  
     <br/><br/>Add Friend at this group?<br/><br/>
  		
	<!-- // userid1 userid2 friends --> 
	<!-- userid1 내 아이디 -->
  	<input type="hidden" name="userid1" value="<%=fdto.getUserid1()%>">
  	<!-- 구룹 -->
  	<input type="hidden" name="mygroup" value="<%=group%>">
  	<!-- 구룹 -->
  	<input type="submit" value="OK" onclick="javascript:close()"/>&nbsp;&nbsp;
  	<a href="javascript:close()">취소</a>
  	<input type="button" value="NO" onclick="javascript:close()"/><br/>
	</form>
  	
</body>
</html>