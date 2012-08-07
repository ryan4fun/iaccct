<%@ page language="java" import="com.iact.vo.Bizpackage,
								 java.util.List,
								 java.util.Set,
								 com.iact.vo.Bizpackageitem,
								 com.iact.action.SessionContainer,
								 com.iact.vo.Userorder,
								 java.text.SimpleDateFormat,
								 com.iact.util.PageResultSet,
								 com.iact.util.Tools" pageEncoding="UTF-8"%>
<%@page import="com.iact.vo.Userresource"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SessionContainer sc = (SessionContainer)session.getAttribute("sessionContainer");	

boolean login = true;
if (sc == null || sc.getUser() == null) {	
	login = false;
} 
List<Userresource> resources = (List<Userresource> )request.getAttribute("resources");
int rsize = resources == null ? 0 : resources.size();

SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
Userorder order = (Userorder)request.getAttribute("order");
Bizpackage p = order.getBizPackage();

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
    <base href="<%=basePath%>" />
    <title>I-ACT爱插播</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="icon" href="<%=basePath %>/images/ico.ico" type="image/x-icon"/> 
	<link rel="shortcut icon" href="<%=basePath %>/images/icon.ico" type="image/x-icon"/> 
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/default.css" />
	<link rel="stylesheet" href="jquery/jquery.ui.datepicker.css"/>
	<link rel="stylesheet" href="jquery/jquery.ui.theme.css"/>
	<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>
	<script src="jquery/jquery.ui.core.js"></script>
	<script src="jquery/jquery.ui.widget.js"></script>
	<script src="jquery/jquery.ui.datepicker.js"></script>
	<script src="jquery/jquery.ui.datepicker-zh-CN.js"></script>
	<script type="text/javascript" src="<%=basePath %>/js/iact.js"></script>

	<!--[if lte IE 7]>
	<style type="text/css">
	ul li{
		display:inline;
		/*float:left;*/
	}
	</style>
	<![endif]-->
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<style>
	form *{
	padding:0; 
	margin:0
}

form {
	margin:20px; 
	background:#eee; 
	padding:5px 10px;
}

.pinput {
	line-height: 36px;
	height: 27px;
	width: 200px;
	border: 1px solid #83a4c5;
	border-radius: 5px;
	padding: 5px;
	margin-top:5px;
	text-align: left;
}

.pcheckbox {
	line-height: 36px;
	height: 37px;
	width: 20px;
}

.pselect {
	line-height: 36px;
	height: 36px;
	width: 210px;
	border: 1px solid #83a4c5;
	border-radius:5px;
	padding: 5px;
	margin-top:5px;
	text-align: left;
}

.failmsg{
	color:#a40000;
}
</style>
<script type="text/javascript">
var basePath = "<%=basePath%>";
var price = <%=p.getPrice() %>;
function fUserRes() {
	window.location.href="user.do?action=UserInfoAction&type=2";
}

function submitOrder() {
	
	if (!$(plandate).val()) {
		$("#lperr").html("&nbsp;&nbsp;计划日期不能为空");
		return;
	} else {
		$("#lperr").html("");
	}
	if (!$(sdate).val()) {
		$("#sperr").html("&nbsp;&nbsp;计划开始时间不能为空");
		return;
	} else {
		$("#sperr").html("");
	}
	if (!$(edate).val()) {
		$("#eperr").html("&nbsp;&nbsp;计划结束不能为空");
		return;
	} else {
		$("#eperr").html("");
	}
	var pnum = $("#pnum").val();
	var reg = new RegExp("^[0-9]*$");
	if (!pnum || !reg.test(pnum)) {
		$("#pnerr").html("请输入数字");
		return;
	} else {
		$("#pnerr").html("");
	}
	$("#orderform").submit();
}

function caltotalprice(obj) {
	var num = obj.value;
	if (num == undefined) {
		num = 1;
	}
	var total = num * price;
	$("#totalprice").get(0).innerHTML  = "" + total + "￥";
}


</script>
</head>
<body>
<form id="orderform" action="order.do" method="post">
<input type="hidden" name="action" value="BizPackageAction" />
<input type="hidden" name="pid" value="<%=p.getId()%>" />
<input type="hidden" name="ptype" value="order" />
<input type="hidden" name="pinfo" value="<%=p.getDescription()%>" />
<input type="hidden" name="price" value="<%=p.getPrice()%>" />

<jsp:include page="topline.jsp" flush="true" />
<jsp:include page="loginpanel.jsp" flush="true" />
<div id="main"> 
<div><img src="images/title_img-6.png" width="1000" height="120" /></div> 
<jsp:include page="menu.jsp" flush="true" />    
<div class="leftinfo">
 	<jsp:include page="online.jsp" flush="true" />
</div>

 <div class="rightinfo">
    <div id="wbg">
        <div>
        <ul>
        <li class="product_info_titles"><%=p.getName() %></li>
        <li class="myinfo_title">开通地区：</li><li><%=p.getBizArea().getName() %></li>   
        <li class="myinfo_title">开始时间：</li><li><%=p.getBeginTime() %></li>   
        <li class="myinfo_title">结束时间：</li><li><%=p.getEndTime()%></li>   
        <li class="myinfo_title">套餐单价：</li><li><%=p.getPrice() %>￥</li>
         <li class="myinfo_title">播放次数：</li><li><%=p.getPlayNumber() %></li>
        <li class="myinfo_title">套餐描述：</li>
        <li><%=p.getDescription() %></li>
        <li class="myinfo_title">节目列表：</li>
        <li>
         <table cellspacing="0" cellpadding="0" style="margin:5px;">
		        	<tr class="product_info">
		        	<% 
		        		Set<Bizpackageitem> items = p.getItems();
		        		List<Bizpackageitem> list = Tools.sortPackageItems(items);
        	    		for (Bizpackageitem item: list) {
					%>
					<td class="product_info_title"><%=item.getBizProgram().getName() %></td>
        	    	<%
        	    		}
        	    	%>
        	    	</tr> 
        	    	<tr class="product_info">
        	    	<% 
        	    		for (Bizpackageitem item: list) {
					%>
					 <td class="product_info_title" style="background-color:#fff;"><%= item.getName()%></td>
        	    	<%
        	    		}
        	    	%> 
        	    	</tr>
		        </table>
        </li>
        <li class="myinfo_title">计划日期：</li>  
        <li><input type="text" class="pinput" id="plandate" name="plandate" readonly="readonly" value="<%=sf.format(order.getPlanDate())%>"/><span class='failmsg' id='lperr'></span></li>
        <li class="myinfo_title">计划开始：</li>  
        <li><input type="text" class="pinput" id="sdate" name="psdate" readonly="readonly" value="<%=sf.format(order.getPlanBegin()) %>"/><span class='failmsg' id='sperr'></span></li>
        <li class="myinfo_title">计划结束：</li>  
        <li><input type="text" class="pinput" id="edate" name="pedate" readonly="readonly" value="<%=sf.format(order.getPlanEnd()) %>"/><span class='failmsg' id='eperr'></span></li>
        <li class="myinfo_title">选择资源：</li>
        <li>
        	<select id="ressel" name="resource" <% if(!login) {%>disabled="disabled"<% }%> class="pselect">
        		<% 
        			for (int i = 0; i < rsize; i++) {
        				Userresource r = resources.get(i);
        				String selected = "";
        				String orderSubtitle = order.getSubtitle();
        				if (r.getSubtitle() != null && r.getSubtitle().equalsIgnoreCase(orderSubtitle)) {
        					selected = "selected";
        				}
        		%>
        			<option value="<%=r.getId()%>" <%=selected %>> <%=r.getSubtitle() %> </option>
        		<%		
        			}
        		%>
        	</select><a href="javascript:void(0);" title="创建资源" <% if(!login) {%>onclick="fUserRes();"<% }%> ><img src="images/newres.gif" /></a>
        </li>
       <li class="myinfo_title">套餐数量：</li><li><input name="pnum" id="pnum" type="text" value="<%=order.getPackageNumber()%>" readonly="readonly" class="pinput" onblur="caltotalprice(this);"/>
       <span class='failmsg' id='pnerr'></span></li>
       <li class="myinfo_title">价格合计：</li><li style="color:#ff0000;" id="totalprice"><%=p.getPrice() %>￥</li>
       </ul>        
       </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" flush="true" />
</form>
</body>
</html>