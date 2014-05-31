<%@page import="Friend.FriendDao"%>
<%@page import="Friend.FriendDto"%>
<%@page import="Group.GroupDto"%>
<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="Group.GroupDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%	

	// test num :5 (테스트로 사용할 숫자)
	int num=50;
	String myid="ImJAVA";
	String userid="ImJSP";
%>
<script>
function fnAllClick(obj){
	var chkobj = document.getElementsByName("checkbox");
	var check = obj.checked;

		if(check){
			for(var i=0; i<chkobj.length; i++){
				if(chkobj[i].type == "checkbox"){
					chkobj[i].checked = true;
				}
			}
		}
		else{
			for(var i=0; i<chkobj.length; i++){
				if(chkobj[i].type == "checkbox"){
					chkobj[i].checked = false;
				}
			}
		}
	}
	function gdelete(param){
		var t=true;
		var f=false;
		if(f==true){
			document.groupdelete.num.value=param;
			document.groupdelete.submit();
		}else{
			alert("false");
			
		}
	}
</script>
<h3>Friend</h3>
<div class="aside-nav">
	<TABLE width="81" border="0" cellspacing="0" cellpadding="0" height="294">
  <TR>
    	<TD valign="top" height="113" ">connect friend<hr></TD>
  </TR>

  <TR>
   <TD valign="top" height="113"><a href="friend_group/Group_Create.jsp?num=<%=num%>&myid=<%=myid%>&userid=<%=userid%>">group</a></TD><hr>
  </TR>
   <td>
   <% 
   	   //friend
	   
   		FriendDao fdao=new FriendDao();
    	Vector fgroup=fdao.getFriends(num);
    	if(fgroup.isEmpty()){
    	
    %>
    		<b>no friend</b>
    	
    	<% 	
    	}else{%>
    <%
    	for(int i=0;i<fgroup.size();i++){
   		FriendDto fdto=(FriendDto)fgroup.get(i);
   		
   	%>
  
  		<tr>
  			<td>
  			<a href="#"><%=fdto.getFriends()%></a>
  			</td>
  		</tr>
  <%
    	}
    }
    %>
<hr/>
    </td>
    <br/>
  	<tr>
  	<td>
     <!-- 구릅 선택삭제  -->
     <form name="groupdelete" action="./friend_group/Group_Select_Delete_Proc.jsp">
   		 <B>Group</B><input type="checkbox" onclick="fnAllClick(this)" /><br/>
    
    <%
    	//group
    	GroupDao gdao=new GroupDao();
    	Vector ggroup=(Vector)gdao.getGroup(num);
    	System.out.println("Friends ggroup.size()="+ggroup.size());
    	if(ggroup.isEmpty()){
    	
    		%>
    		<b>no group</b>
    	<% 	
    	}else{%>
    <%
    	for(int i=0;i<ggroup.size();i++){
   		GroupDto gdto=(GroupDto)ggroup.get(i);
   		System.out.println("gdto.getNum: "+gdto.getNum());
   		%>
  						<tr>
							<td><input type="checkbox" name="checkbox" value="<%=num%>"></td>
  							
  							<td><a href="#"><font size="4"><%=gdto.getNum() %></font></a></td>
  							<td><a href="#"><font size="4"><%=gdto.getGroup() %></font></a></td>
  							<td><a href="#"><font size="2"><%=gdto.getUserid() %></font></a></td>
  						</tr>
						
   	<%
    		}
    	}
    %>
   </td> 
   </tr>
  
  <TR> 
    <TD> 
   		<input type="submit" name="delete" value="삭제"/>
 		<!--<input type="button" name="delete" value="삭제" onclick="gdelete()"/>-->
    </form>
    </TD>
  </TR>
 
</TABLE>
</div>
