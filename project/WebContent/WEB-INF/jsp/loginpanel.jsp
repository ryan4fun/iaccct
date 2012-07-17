<%@ page language="java" import="com.iact.action.SessionContainer" pageEncoding="UTF-8"%>
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
			            <li><img src="<%=basePath%>/images/login_button.png" width="107" height="40" onclick="login();" /></li>
			        </ul>
			        </div>
		        <div>
		        <ul>
		        <li class="spaecst"></li>
		       	  <li><a href="f.do?page=register.jsp">免费注册</a> | <a href="f.do?page=user/forgetp.jsp">忘记密码</a></li>
		        	<li class="spaecs">
		        	<span class="err" id="errpanel"></span>
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
        %>
        	<div class="logopan">
        	<div class="logopansub">
			<div class="logo"></div>
			</div>
	    	</div>
        <%  }%>