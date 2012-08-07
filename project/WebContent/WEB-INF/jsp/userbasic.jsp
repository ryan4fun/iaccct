<%@ page language="java" import="com.iact.action.SessionContainer,
								 com.iact.vo.User,
								 com.iact.vo.Accountlog,
								 com.iact.util.PageResultSet,
								 java.text.SimpleDateFormat,
								 java.util.List" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SessionContainer sc = (SessionContainer)session.getAttribute("sessionContainer");
User user = sc.getUser();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
String loginTime = user.getLoginTime() == null ? "&nbsp;&nbsp;" : sf.format(user.getLoginTime());
int level = user.getLevel() == 0 ? 1: user.getLevel();

PageResultSet result = (PageResultSet)request.getAttribute("logs");
String url = "user.do?action=UserInfoAction&type=0";
String pageNav = result.getToolBar(url);
List<Accountlog> logs = (List<Accountlog> )result.getData();
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
	        <li class="myinfo_title">&nbsp;</li><li>&nbsp;</li>
	        <li class="myinfo_title">账户名称：</li><li><%=user.getLogin() %></li>
	        <li class="myinfo_title">用户姓名：</li><li><%=user.getRealName() %></li>      
	        <li class="myinfo_title">帐户余额：</li><li class="money"><%=user.getBalance()%>￥</li>
	        <li class="myinfo_title">预付金额：</li><li class="money"><%=user.getPrepayMoney()%>￥</li>
	        <li class="myinfo_title">用户等级：</li>
	        <li>   
	        <% 
		       	for (int i = 0; i < level; i++) {
		       %>
		      	 <img src="images/star.png" width="16" height="15" />
		       <%
		       	}
		     %>
		     &nbsp;
		     </li>
	        <li class="myinfo_title">上次登录时间：</li><li><%=loginTime %></li>
	        <li class="myinfo_title">上次登录地址：</li><li><%=user.getLoginIp() %></li>
	         <li class="userbytitle"><img src="images/30day.png" /></li>
	         <li>
	        <ul class="byinfolist">
	        <li class="byinfolistt">订单号</li>
	        <li class="byinfolistt">变更方式</li>
	        <li class="byinfolistt">变更金额</li>
	        <li class="byinfolistt">帐户余额</li>
	        <li class="byinfolistt">添加时间</li> 
	        </ul>
        </li>
       	<% 
       		for (int i = 0, size = logs.size(); i < size; i++) {
       		Accountlog log = logs.get(i);
       		double amount = log.getAlterMode().equalsIgnoreCase("支出") 
       			? log.getExpendAmount() : log.getIncomeAmount();
       		
       	%>
       	<li class="byinfolists">
        <ul>
        <li class="byinfolistt"><%=log.getOrderId()%></li>
        <li class="byinfolistt" ><%=log.getAlterMode() %></li>
        <li class="byinfolistt" ><%=amount %></li>
        <li class="byinfolistt" ><%=log.getBalance() %></li>
        <li class="byinfolistt"><%=sf.format(log.getAddTime())%></li>
        </ul> 
        </li>
       	<% 	
       		}
       	%>
        <li>
        </li>
	     </ul>        
        </div>
         <div>
         <%=pageNav%>      
        </div>
   		</div>
 	 </div> 
</div>
<jsp:include page="footer.jsp" flush="true"/>
</div>
</body>
</html>
