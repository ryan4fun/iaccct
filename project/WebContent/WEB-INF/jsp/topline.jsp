<%@ page language="java" import="com.iact.vo.User,
								 com.iact.action.SessionContainer" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<div class="topline">
	<div id="top">
	<ul>
    	<li class="topliimg"><img src="images/top_home.png" width="18" height="17" alt="home" /></li>
        <li class="toplitext"><a href="index.html">i-ACT首页</a></li>
        
        <%
        	SessionContainer sc = (SessionContainer)session.getAttribute("sessionContainer");	
        	if (sc == null || sc.getUser() == null) {	
        %>
        	<li class="toplilogin">您还未登录，请<a href="f.do?page=login.jsp">登录</a></li>   
        <%
        	} else {
        		String realName = sc.getUser().getRealName();
        %>
        <li class="toplilogin">欢迎您，<%=realName%>！&nbsp;&nbsp;<a href="f.do?action=UserInfoAction&type=0" title="进入我的应用中心">我的应用</a></li>     
        <% 		
        	}
        %>
   			<li class="topliimg"><img src="images/top_help.png" width="14" height="16" /></li>
	        <li class="toplitext"><a href="f.do?page=help.jsp">使用方式</a></li>
			<li class="topliimg"><img src="images/top_QA.png" width="12" height="18" /></li>
			<li class="toplitext"><a href="f.do?page=qa.jsp">常见问题</a></li>
			<li class="topliimg"><img src="images/top_cancat.png" width="17" height="18" /></li>
			<li class="toplitext"><a href="f.do?page=contact.jsp">联系我们</a></li>
    </ul>
	</div>
</div>