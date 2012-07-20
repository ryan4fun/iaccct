<%@ page language="java" import="com.iact.vo.Platforminformation" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Platforminformation p = (Platforminformation)request.getAttribute("info");
java.sql.Blob bs = p.getInformation();
String info = "";
if (bs != null) {
	info = new String(bs.getBytes(1, (int)bs.length()), "GBK");
}
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
String createTime = "";
if (p.getAddTime() != null) {
	createTime = sf.format(p.getAddTime());
}

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
	<script type="text/javascript" src="<%=basePath %>/jquery/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/js/iact.js"></script>

	<!--[if lte IE 7]>
	<style type="text/css">
	ul li{
		display:inline;
		/*float:left;*/
	}
	</style>
	<![endif]-->
	
	<script type="text/javascript">
		 var basePath = "<%=basePath%>";
		 function login() {
		 	var un = $("#loginName").val();
		 	var pd = $("#password").val();
		 	var at = $("#authCode").val();
		 	var params = "action=LoginAction&ajax=true"
		 			+"&loginName="+un
		 			+"&password="+pd
		 			+"&authCode="+at
		 			+"&ts="+ new Date();
		 	$.ajax({
		 		type:"post",
		 		url:"login.do",
		 		beforeSend:function(){
		 			$("#errpanel")[0].innerText = "ddddd";
		 		},
		 		dataType:"json",
		 		async:true,
		 		data:params,
		 		success:function(data) {
		 			if (data.errorCode == 0) {
		 				window.location.href = basePath +"index.do?action=IndexAction";		
		 			} else {
		 				$("#errpanel")[0].innerHTML = data.errorMsg;
		 			}
		 		}
		 	});
		 }
		function refreshAuth(basePath) {
			$('#authImg')[0].src=basePath+"/auth?ts=" + new Date();
		}
	</script>
</head>
<body>
<jsp:include page="topline.jsp" flush="true" />
<jsp:include page="loginpanel.jsp" flush="true" />
<div id="main"> 
<div><img src="images/title_img-3.png" width="1000" height="120" /></div> 
<jsp:include page="menu.jsp" flush="true" />    
<div class="leftinfo">
 	<jsp:include page="online.jsp" flush="true" />
</div>
 <div class="rightinfo">
    <div id="wbg">
        <ul>
        <li style="text-align:center"><%=p.getTitle()%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=createTime%> </li>
        <li>&nbsp;</li>
        </ul>
        <ul>
        <li class="aboutproduct">
        	<%=info%>
        </li>
        </ul>
        </div>
	</div> 
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>