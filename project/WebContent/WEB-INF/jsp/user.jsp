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

<script>
 		function showUserorder() {
 			$("#basic").css("display", "none");
 			$("#orders").css("display", "block");
		 	var params = "action=UserInfoAction&ajax=true&type=order"
		 				+"&ts="+ new Date();
		 	$.ajax({
		 		type:"post",
		 		url:"userinfo.do",
		 		beforeSend:function(){
		 		},
		 		dataType:"json",
		 		async:false,
		 		data:params,
		 		success:function(data) {
		 			var orders=data;
		 			var len = orders==null ? 0:orders.length; 
		 			for (var i = 0; i < len; i++) {
		 				var order = orders[i];
		 				$('<ul/>', 
		 				   {"class":"byinfolists"}).appendTo($("#orderlist"));
		 			}
		 		}
		 	});
		 }
</script>

</head>
<body>
<jsp:include page="topline.jsp" flush="true"/>
<div class="logopan">
	<div class="logopansub">
	<div class="logo"></div>
    <div class="login">
    	
    </div>
    </div>
</div>
<div id="main">   
  <div id="userpage">
    <jsp:include page="menu.jsp" flush="true"/>
	<div class="leftinfo" >
        <div id="wbg">
        <ul>
        <li><img src="images/myap.png" /> </li>
        <li id="my1"><a href="user_home.html">帐户信息</a></li>
        <li id="my2"><a href="javascript:void(0);" onclick="showUserorder()">我的订单</a></li>
        <li id="my3"><a href="user_source.html">我的资源</a></li>
        <li id="my4"><a href="user_sale.html">我的业务</a></li>
        <li id="my5"><a href="user_online.html">在线充值</a></li>
        <li id="my6"><a href="user_oinfo.html">充值记录</a></li>
        <li id="my7"><a href="user_byinfo.html">消费记录</a></li>
        <li id="my8"><a href="logout.do?action=LogoutAction">退出登录</a></li>
        </ul>
        </div>
  	</div>
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
        <div id="orders" style="display:none">
        <ul>
        <li><img src="images/my_title2.png" width="160" height="30" /></li>
        <li>&nbsp;</li>
        <li class="search">
        <ul>
        <li>起始时间:</li>
        <li><input name="" type="text" class="searchinput" /></li>
        <li><img src="images/calendar.png" width="16" height="16" /></li>
        <li><input name="" type="text" class="searchinput" /></li>
        <li><img src="images/calendar.png" width="16" height="16" /></li>
        <li><img src="images/search_button.png" width="120" height="33" /></li>
        </ul>
        </li>
        <li class="userbytitle"><img src="images/Bin.png" width="24" height="24" />&nbsp;&nbsp;&nbsp;&nbsp;最近30天的用户订单</li>
        <li id="orderlist">
        <ul class="byinfolist">
        <li><input name="" type="checkbox" value="" /></li>
        <li class="byinfolistt">订单号</li>
        <li class="byinfolistt">订单</li>
        <li class="byinfolistt">日期</li>
        </ul>
        <ul class="byinfolists">
        <li><input name="" type="checkbox" value="" /></li>
        <li class="byinfolistts">2012071501</li>
        <li class="byinfolistts">轩辕剑.天之痕-湖南卫视</li>
        <li class="byinfolistts">2012年7月15日</li>
        </ul>
        </li>
        <li>
        <ul class="pageno">
        <li class="pagenon">上一页</li>
        <li>[1]</li>
        <li>[2]</li>
        <li>[3]</li>
        <li>[4]</li>
        <li>[5]</li>
        <li>[6]</li>
        <li><input class="pagenon" name="" type="text" /></li>
        <li class="pagenon">下一页</li>
        </ul>
        </li>
        </ul>        
        </div>
    </div>
  </div> 
</div>
<jsp:include page="footer.jsp" flush="true"/>
</div>
</body>
</html>
