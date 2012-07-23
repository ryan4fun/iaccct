<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<!-- Add jQuery library -->
<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
	function openResDialog(type) {
		if (type == 0) {
			window.showModalDialog("f.do?page=userresimg.jsp","", "dialogHeight:300px; dialogWidth:600px;");
		} else {
			window.showModalDialog("f.do?page=userrestext.jsp","", "dialogHeight:300px; dialogWidth:600px;");
		}
		window.location.reload();
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
<jsp:include page="topline.jsp" flush="true" />
<jsp:include page="loginpanel.jsp" flush="true" />
<div id="main">   
  <div id="userpage">
     <jsp:include page="menu.jsp" flush="true" />
     <jsp:include page="userleft.jsp" flush="true" />

 	 <div class="rightinfo">
        
        <div id="wbg">
        <div>
        <ul>
        <li><img src="images/my_title3.png" width="160" height="30" /></li>
        <li>&nbsp;</li>
        <li class="userbytitle">
       <ul id="nav">
		<li>
			<a href="javascript:void(0);" onclick="openResDialog(1);" title="注意：最多可以输入140个文字"><img src="images/131s.png" width="24" height="24" /></a>
		    &nbsp;&nbsp;&nbsp;&nbsp;
		    <a href="javascript:void(0);"  onclick="openResDialog(0);" title="图片格式：jpg、png；图片大小：100px x 100px"><img src="images/130s.png" width="24" height="24" /></a>
    		&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onclick="delRes();"><img src="images/Bin.png" width="24" height="24" /></a>
    	</li>
		</ul>
        </li>
        <li class="byinfolist">
        <ul>
        <li><input name="" type="checkbox" value="" /></li>
        <li>No</li>
        <li class="byinfolistt">资源类型</li>
        <li class="byinfolistt">资源名称</li>
        <li class="byinfolistt">日期</li>
        <li class="byinfolistt">删除</li>
        </ul>
        </li>
        <li class="byinfolists">
        <ul>
        <li><input name="" type="checkbox" value="" /></li>
        <li>01</li>
        <li class="byinfolistt">文字</li>
        <li class="byinfolistt">宽带业务</li>
        <li class="byinfolistt">2012-7-15</li>
        <li class="byinfolistt">删除</li>
        </ul>
        </li>
        <li>
        </li>
        </ul>        
        </div>
    </div>
  </div> 
</div>
</div>
<jsp:include page="footer.jsp" flush="true" />
<div id="inline1" style="width:400px;display: none;">
		<h3>输入插播文字</h3>
        <p><textarea name="" cols="44" rows="5"></textarea></p>
</div>
<div id="inline2" style="width:400px;display: none;">
		<h3>输入插播图片</h3>
        <p><input type="file" size="40" /></p>
        <p><img src="images/ct-1.png" width="300" height="300" /></p>
</div>

</body>
</html>
