<%@ page language="java" import="java.util.List,
								 java.text.SimpleDateFormat,
								 com.iact.vo.Userorder,
								 com.iact.util.PageResultSet" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
PageResultSet result = (PageResultSet)request.getAttribute("result");
String url = "user.do?action=UserInfoAction&type=1";
String pageNav = result.getToolBar(url);
List<Userorder> userOrders = (List<Userorder>)result.getData();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
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

</head>
<body>
<jsp:include page="topline.jsp" flush="true"/>
<jsp:include page="loginpanel.jsp" flush="true"/>

<div id="main">   
  <div id="userpage">
    <jsp:include page="menu.jsp" flush="true"/>
	<div class="leftinfo" >
        <div id="wbg">
        <ul>
        <li><img src="images/myap.png" /> </li>
        <li id="my1"><a href="user.do?action=UserInfoAction">帐户信息</a></li>
        <li id="my2"><a href="user.do?action=UserInfoAction&type=1">我的订单</a></li>
        <li id="my3"><a href="user.do?action=UserInfoAction&type=2">我的资源</a></li>
        <li id="my4"><a href="user_sale.html">我的业务</a></li>
        <li id="my5"><a href="user_online.html">在线充值</a></li>
        <li id="my6"><a href="user_oinfo.html">充值记录</a></li>
        <li id="my7"><a href="user_byinfo.html">消费记录</a></li>
        <li id="my8"><a href="logout.do?action=LogoutAction">退出登录</a></li>
        </ul>
        </div>
  	</div>
  	 <div class="rightinfo">
        <div id="wbg">
        <div>
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
        <li>
        <ul class="byinfolist">
        <li><input name="" type="checkbox" value="" /></li>
        <li class="byinfolistt">订单号</li>
        <li class="byinfolistt">套餐名称</li>
        <li class="byinfolistt" style="width:50px;">单价</li> 
        <li class="byinfolistt" style="width:50px;">套数</li>
        <li class="byinfolistt" style="width:60px;">处理状态</li>
        <li class="byinfolistt">日期</li>
        <li class="byinfolistt" style="width:50px;">删除</li>
        </ul>
        <% 
        	for (int i = 0, size = (userOrders 
        						== null ? 0 :userOrders.size()); i < size; i++ ) {
        		Userorder u = userOrders.get(i);
        %>
	        <ul class="byinfolists">
	        <li><input name="" type="checkbox" value="" /></li>
	        <li class="byinfolistt"><%=u.getOrderId() %></li>
	        <li class="byinfolistt"><%=u.getBizPackage() %></li>
	        <li class="byinfolistt" style="width:50px;"><%=u.getPlanFee()%></li>
	        <li class="byinfolistt" style="width:50px;"><%=u.getPackageNumber() %></li>
	        <li class="byinfolistt" style="width:60px;"><%=u.getHandleStatus()%></li>
	        <li class="byinfolistt"><%=sf.format(u.getCreateTime())%></li>
	        <li class="byinfolistt" style="width:50px;">删除</li>
	        </ul> 
        <%	
        	}
        %>
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
