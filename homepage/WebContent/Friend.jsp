<%-- <%@page import="Group.GroupDao"%>
<%@page import="Group.FriendDto"%>
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
	function Friend_Add(group,myid){
		alert(group+myid);
		//transfor group and myid to Add Friend
		var popUrl = "AddFriend.jsp?group="+group+"&myid="+myid;	//팝업창에 출력될 페이지 URL
		var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
		//self.opener=self;
		//self.close();
	}
	function fnAllClick(obj){
	
		var chkobj = document.getElements
		ByName("checkbox");
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
    	<TD valign="top" height="113">connect friend<hr></TD>
  </TR>

  <TR>
  <!--   -->
   <TD valign="top" height="113"><a href="friend_group/Group_Create.jsp?num=<%=num%>&myid=<%=myid%>">group</a></TD><hr>
  </TR>
   <td>
   <%
   	//friend
      	   	GroupDao fdao=new GroupDao();
          	Vector fgroup=fdao.getFriends(myid);
          	if(fgroup.isEmpty()) {
   %>
    		<b>no friend</b>
    	
    	<%
    	    		} else {
    	    	%>
    <%
    	for(int i=0;i<fgroup.size();i++) {
       		Group.FriendDto fdto=(Group.FriendDto)fgroup.get(i);
    %>
  
  		<tr>
  			<td>
  			<a href="#"><%=fdto.getUserid2()%></a>
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
    	Vector ggroup=(Vector)gdao.getGruop(myid);
    	System.out.println("Friends ggroup.size()="+ggroup.size());
    	if(ggroup.isEmpty()) {
    	
    		%>
    		<b>no group</b>
    	<% 	
    	} else {%>
    <%
    		for(int i=0;i<ggroup.size();i++) {
   			GroupDto gdto=(GroupDto)ggroup.get(i);
   			System.out.println("gdto.getNum: "+gdto.getNum());
   	%>
  						<tr>
							<td><input type="checkbox" name="checkbox" value="<%=gdto.getNum()%>"></td>
  							<td><a href="showFriend.jsp?myid=<%=gdto.getMyid()%>&mygetGroup=<%=gdto.getGroup()%>"><font size="3"><%=gdto.getGroup()%></font></a>&nbsp;&nbsp;<input type="button" value="추가" onclick="javascript:Friend_Add('<%=gdto.getGroup()%>','<%=gdto.getMyid()%>')"/></td>
  						</tr> 	
 	<%
 						try{
 							//System.out.println("fRiend:"+request.getAttribute("check"));						
 							//String check=(String)session.getAttribute("check");
 							//System.out.println(session.getAttribute("check") + "===============================");
 						
 							if(session.getAttribute("check").equals("1")){
 							
 	%>										
 												<tr><td><font><%=%></font></td></tr>
 	<%			
 	%>
 	<%						}
 						} catch(Exception err) {
 							System.out.println(err);
 						}
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
 --%>
<%@page import="Group.GroupDao"%>
<%@page import="Group.GroupDto"%>
<%@page import="Group.FriendDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%!
	GroupDao dao=new GroupDao();
	boolean check=false;
%>
<script src="http://code.jquery.com/jquery-latest.js"></script>


<script>
	//function group(){
	//	alert("goup event");
	
	//	}
	
	//popup 창 띄우기(num,myid를 넘겨줌)
	function Pop_Create_Group(num,myid) {
		//alert(num+myid);
		var popUrl = "friend_group/Group_Create.jsp?num="+num+"&myid="+myid;	//팝업창에 출력될 페이지 URL
		var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
	} 
	
	function Pop_Friend_Add(group,myid){
	
		alert(group+myid);
		//transfor group and myid to Add Friend
		var popUrl = "AddFriend.jsp?group="+group+"&myid="+myid;	//팝업창에 출력될 페이지 URL
		var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
		
	}
	
</script>

<%
	//회원번호와 아이디 가상으로 설정()
	int num=1;
	String myid="ImJAVA";

%>
<div class="aside-nav">
 <TABLE width="115" border="0" cellspacing="1" cellpadding="1" height="1">
  
   <TR>
    <TD align="center" valign="top" height="0"><a href="javascript:Pop_Create_Group('<%=num%>','<%=myid%>')">구룹 생성</a><hr/></TD>
  </TR>

  <TR>
    <TD align="center" valign="center" height="0">친구목록<hr/></TD>
  </TR>
  		<%
    		
    		Vector friendList=dao.getFriends(myid);
    		for(int i=0;i<friendList.size();i++){
    			FriendDto dto=(FriendDto)friendList.get(i);
    	%>
   
    <TR> 
    <TD> 
      <P align="center"><A href="#" target=""><%=dto.getUserid2()%></A></P>
    </TD>
  </TR>
    		
    	<%				
    		}
    	%>
   
  <TR>
   	<TD align="center"> 
  		<b>구룹 목록</b>  
    	<hr/>
    	<%
    		Vector groupList=dao.getGruop(myid);
    		for(int i=0;i<groupList.size();i++){
    			GroupDto dto=(GroupDto)groupList.get(i);
    	%>
    		
    		<font><%=dto.getGroup()%></font>&nbsp;
    		<font size="1"><a href="javascript:Pop_Friend_Add('<%=dto.getGroup()%>','<%=dto.getMyid()%>')">추가</a></font><br/>
    	<%				
    		}
    	%>
    	<!-- 구룹 삭제하기 -->
    	<!-- 친구 뿌려주기 -->
    	<!-- 친구 삭제 -->
    </TD>
  </TR>
 
</TABLE>
</div>
