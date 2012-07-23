<%@ page language="java" import="com.iact.action.SessionContainer,
								 com.iact.vo.User,
								 java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SessionContainer sc = (SessionContainer)session.getAttribute("sessionContainer");
User user = sc.getUser();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
String loginTime = user.getLoginTime() == null ? "&nbsp;&nbsp;" : sf.format(user.getLoginTime());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I-ACT爱插播</title>
<link rel="icon" href="<%=basePath %>/images/ico.ico" type="image/x-icon"/> 
<link rel="shortcut icon" href="<%=basePath %>/images/icon.ico" type="image/x-icon"/> 
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="<%=basePath %>/jquery/jquery-1.7.2.min.js"></script>
<!--[if lte IE 7]>
<style type="text/css">
ul li{
	display:inline;
	/*float:left;*/
}
</style>
<![endif]-->

</head>
<body>
<jsp:include page="topline.jsp" flush="true"/>
<jsp:include page="loginpanel.jsp" flush="true"/>

<div id="main">   
  <div id="userpage">
    <jsp:include page="menu.jsp" flush="true"/>
    <jsp:include page="userleft.jsp" flush="true" />
  	<div class="rightinfo" id="content">
        <div id="wbg">
        <div id="basic">
	        <ul>
	        <li><img src="images/my_title1.png" width="160" height="30" /></li>
	        <li id="myinfo_title">&nbsp;</li><li>&nbsp;</li>
	        <li id="myinfo_title">账户名称：</li><li><%=user.getLogin() %></li>
	        <li id="myinfo_title">用户姓名：</li><li><%=user.getRealName() %></li>      
	        <li id="myinfo_title">帐户余额：</li><li><%=user.getBalance()%></li>
	        <li id="myinfo_title">用户等级：</li><li><%=user.getLevel() %></li>
	        <li id="myinfo_title">上次登录时间：</li><li><%=loginTime %></li>
	        <li id="myinfo_title">上次登录地址：</li><li><%=user.getLoginIp() %></li>
	        <li id="myinfo_title">&nbsp;</li><li>&nbsp;</li>
	        </ul>        
        </div>
   		</div>
 	 </div> 
</div>
<jsp:include page="footer.jsp" flush="true"/>
</div>
</body>
</html>
