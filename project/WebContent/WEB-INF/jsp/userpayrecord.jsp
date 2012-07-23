<%@ page language="java" import="java.util.List,
								 java.text.SimpleDateFormat,
								 com.iact.vo.Payrecord,
								 com.iact.util.PageResultSet" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
PageResultSet result = (PageResultSet)request.getAttribute("result");
String url = "user.do?action=UserInfoAction&type=1";
String pageNav = result.getToolBar(url);
List<Payrecord> payrecords = (List<Payrecord>)result.getData();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
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
  	 <div class="rightinfo">
        <div id="wbg">
        <div>
        <ul>
       <li><img src="images/my_title6.png" width="160" height="30" /></li>
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
        <li class="userbytitle"><img src="images/Bin.png" width="24" height="24" />&nbsp;&nbsp;&nbsp;&nbsp;最近30天的用户成功充值记录</li>
        <li>
        <ul class="byinfolist">
        <li><input name="" type="checkbox" value="" /></li>
        <li class="byinfolistt">订单号</li>
        <li class="byinfolistt">充值模式</li>
         <li class="byinfolistt">充值金额</li>
        <li class="byinfolistt">充值时间</li> 
        </ul>
        <% 
        	for (int i = 0, size = (payrecords 
        						== null ? 0 :payrecords.size()); i < size; i++ ) {
        		Payrecord u = payrecords.get(i);
        %>
	        <ul class="byinfolists">
	        <li><input name="" type="checkbox" value="" /></li>
	        <li class="byinfolistt"><%=u.getOrderId() %></li>
	        <li class="byinfolistt" style="width:60px;"><%=u.getPayMode()%></li>
	        <li class="byinfolistt"><%=u.getPayAmount() %></li>
	        <li class="byinfolistt"><%=sf.format(u.getAddTime())%></li>
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
