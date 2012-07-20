<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        <div>
        <ul>
        <li><img src="images/gonggao.png" width="148" height="35" /></li>
        <li></li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        </ul>
        </div>
        <div class="more"><a href="gonggao.html">更多...</a></div>
    	</div>
        <div id="wbg">
        <div>
        <ul>
        <li><img src="images/Rss.png" width="145" height="32" /></li>
        <li></li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>      
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        <li id="newstitle">.实拍黄河再现罕见"流鱼"奇观 上千市民捞鱼</li><li id="newsdata">2012-07-07</li>
        </ul>        
        </div>
     <div class="more"><a href="news.html">更多...</a></div>
    </div>
</div>  
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>