<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<h3>Navigation</h3>
<div class="aside-nav">
	<ul><!-- ë³¸ì¸ íì´ì§ / ë´ì¤í¼ë/ ì¹êµ¬ëª©ë¡/ ì¹êµ¬ ì°¾ê¸°/ Some N Some -->
		<li><a>환영</a></li>
		<li><a>It's me</a></li>
		<li><a href="/homepage/newsfeed/main.jsp">뉴스 피드</a></li>
		<li><a href ="/homepage/friendList/main.jsp">친구 목록</a></li>
		<li><a href ="/homepage/friendFind/main.jsp">친구 찾기</a></li>
		<li class="aside-submenu">
		<a>Some N Some<!-- <span class="count-number"> 3</span> --></a>
			<%if(session.getAttribute("user") != null){ %>
			<ul>
				<li><a href="/homepage/someNsome/menu1/main.jsp">러브 스토리</a></li>
				<li><a href="/homepage/someNsome/menu2/photo.jsp">사진첩</a></li>
				<li><a href="/homepage/someNsome/menu3/main.jsp">달력</a></li>
			</ul>
			<%}else{ %>
			<ul>
				<li><a href="/homepage/someNsome/main2.jsp">Dash</a></li>
				<li><a href="/homepage/someNsome/main.jsp">call me</a></li>
			</ul>
			<%} %>
		</li>
	</ul>
</div>
