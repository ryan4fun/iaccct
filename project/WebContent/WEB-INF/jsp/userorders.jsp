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
<link rel="icon" href="<%=basePath %>/images/ico.ico" type="image/x-icon"/> 
<link rel="shortcut icon" href="<%=basePath %>/images/icon.ico" type="image/x-icon"/> 
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="jquery/jquery.ui.datepicker.css"/>
<link rel="stylesheet" href="jquery/jquery.ui.theme.css"/>
<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>
<script src="jquery/jquery.ui.core.js"></script>
<script src="jquery/jquery.ui.widget.js"></script>
<script src="jquery/jquery.ui.datepicker.js"></script>
<script src="jquery/jquery.ui.datepicker-zh-CN.js"></script>

<script>
	$(function() {
		$( "#sdate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.png",
			buttonImageOnly: true,
			prevText:'',
			nextText:''
		});
		$( "#edate" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.png",
			buttonImageOnly: true,
			prevText:'',
			nextText:''
		});
	});
	
	function deleOrder(oid, status) {
		if (status != '新增') {
			alert(status+"订单不能删除!");
		} else {
			if (oid != null) {
				$("#sid").val(oid);
				$("#deleForm").submit();
			} 
		}
	}
	function viewOrder(oid, status) {	
		if (oid != null) {
			$("#vid").val(oid);
			$("#status").val(status);
			$("#viewForm").submit();
		} 
	}
</script>
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
        <li><img src="images/my_title2.png" width="160" height="30" /></li>
        <li>&nbsp;</li>
        <li class="search">
        <form action="user.do" id="searchForm">
        <input type="hidden" value="UserInfoAction" name="action" />
         <input type="hidden" value="1" name="type" />
        <ul>
        <li>起始时间:</li>
        <li><input type="text" class="searchinput" id="sdate" name="sdate" readonly="readonly"/></li>
        <li>&nbsp;</li>
        <li><input type="text" class="searchinput" id="edate" name="edate" readonly="readonly"/></li>
        <li><a href="javascript:void(0);" onclick="searchForm.submit();"><img src="images/search_button.png" width="120" height="33"/></a></li>
        </ul>
        </form>
        </li>
        <li class="userbytitle"><img src="images/30day.png" /></li>
        <li class="byinfolist">
        <ul>
        <li class="byinfolistt">订单号</li>
        <li class="byinfolistt">套餐名称</li>
        <li class="byinfolistt" style="width:50px;">单价</li> 
        <li class="byinfolistt" style="width:50px;">套数</li>
        <li class="byinfolistt" style="width:60px;">处理状态</li>
        <li class="byinfolistt">日期</li>
        <li class="byinfolistt" style="width:50px;">删除</li>
        </ul>
        </li>
        
        <% 
        	for (int i = 0, size = (userOrders 
        						== null ? 0 :userOrders.size()); i < size; i++ ) {
        		Userorder u = userOrders.get(i);
        %>
	    	<li class="byinfolists">
	        <ul >
	        <li class="byinfolistt"><a href="javascript:void(0);" title="查看订单明细" onclick="viewOrder('<%=u.getId() %>', '<%=u.getHandleStatus() %>');"><%=u.getOrderId() %></a></li>
	        <li class="byinfolistt"><a href="javascript:void(0);" title="<%=u.getBizPackage().getName() %>"><%=u.getBizPackage().getName() %></a></li>
	        <li class="byinfolistt" style="width:50px;"><%=u.getPlanFee()%></li>
	        <li class="byinfolistt" style="width:50px;"><%=u.getPackageNumber() %></li>
	        <li class="byinfolistt" style="width:60px;"><%=u.getHandleStatus()%></li>
	        <li class="byinfolistt"><%=sf.format(u.getCreateTime())%></li>
	        <li class="byinfolistt" style="width:50px;"><a href="javascript:void(0);" onclick="deleOrder('<%=u.getId() %>', '<%=u.getHandleStatus() %>');">删除</a></li>
	        </ul> 
	        </li>
        <%	
        	}
        %>
        <li></li>
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

<form id="deleForm" action="user.do" method="post">
	<input type="hidden" name="action" value="UserOrderAction"/>
	<input type="hidden" name="stype" value="deleOrder"/>
	<input type="hidden" name="sid" id="sid"/>
</form>
<form id="viewForm" action="user.do" method="post">
	<input type="hidden" name="action" value="UserOrderAction"/>
	<input type="hidden" name="stype" value="viewOrder"/>
	<input type="hidden" name="sid" id="vid"/>
	<input type="hidden" name="status" id="status"/>
</form>

</body>
</html>
