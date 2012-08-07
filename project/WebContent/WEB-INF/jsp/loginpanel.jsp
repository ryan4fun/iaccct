<%@ page language="java" import="com.iact.action.SessionContainer,
								 com.iact.vo.User" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <!--  login area -->
   	  	<%
        	SessionContainer sc = (SessionContainer)session.getAttribute("sessionContainer");	
        	if (sc == null || sc.getUser() == null) {	
        %>
        	<div class="logopan">
			<div class="logopansub">
			<div class="logo"></div>
		    <div class="login">
		    		<div><ul>
			        	<li class="user"></li>
			            <li><input name="loginName" type="text" id="loginName"/></li>
			            <li class="pass"></li>
			            <li><input type="password" name="password" id="password"/></li>
			            <li><input type="text" name="authCode" id="authCode"/></li>
			            <li><a href="javascript:void(0);" onclick="login();">
			            <img src="<%=basePath%>/images/login_button.png" width="107" height="40"  onmouseover="this.src='images/login_button-2.png';" onmouseout="this.src='images/login_button.png';" /></a></li>
			        </ul>
			        </div>
		        <div>
		        <ul>
		        <li class="spaecst"></li>
		       	  <li><a href="reg.do?action=RegisterAction&type=4">免费注册</a> | <a href="javascript:void(0);" onclick="popForgetDiv();" >忘记密码</a></li>
		        	<li class="spaecs">
		        	<span class="errmsg" id="errpanel"></span>
		        	</li>
		            <li><img src="<%=basePath%>/auth" width="61" height="21" id="authImg"/></li>
		        	<li><a href="javascript:void(0);" onclick="refreshAuth('<%=basePath%>');">看不清？换一张</a></li>
		      	</ul>
		     	</div>
		    </div>
		    </div>
	     </div>  
        <%
        	} else {
        	 	User user = sc.getUser();
        	 	int level = user.getLevel() == 0 ? 1: user.getLevel();
        %>
        	<div class="logopan">
        	<div class="logopansub">
			<div class="logo"></div>
			   <div class="login">
			   <div id="topinfos"><a href="logout.do?action=LogoutAction" title="退出登陆">[退出]</a></div>
		       <div id="topinfos">我的资源：（<%=user.getResNum() %>/10）</div>
		       <div id="topinfos"><%= user.getBalance()%>￥</div>
		   	   <div id="topinfos">我的余额：</div>
		       <div id="topinfos">我的订单：（<%=user.getOrderNum() %>）</div>
		       <div id="topinfos">
		       <% 
		       	for (int i = 0; i < level; i++) {
		       %>
		      	 <img src="images/star.png" width="16" height="15" />
		       <%
		       	}
		       %>
		       
		       </div>
		       <div id="topinfos">我的等级：</div>
		   	   </div>
			</div>
	    	</div>
        <%  }%>