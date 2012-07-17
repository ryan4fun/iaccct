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
<div><img src="images/title_img-1.png" width="1000" height="120" /></div>  
<jsp:include page="menu.jsp" flush="true" />    
<div class="leftinfo">
 	<jsp:include page="online.jsp" flush="true" />
</div>
<div class="rightinfo">
    <div id="wbg">
        <ul>
        <li><img src="images/sub_title_img-1.png" width="144" height="32" /></li>
        </ul>
        <ul>
        <li class="aboutproduct">本系统使用“三网融合”技术，提供基于Cloud的电视字幕信息发布平台，将信息用最便捷的方式呈现到电视屏幕。系统革命性的重新定义电视系统中的传统广告及信息发布方式，为电视系统服务商和信息发布商提供先进的解决方法，提高电视系统作为第一信息媒体的盈利能力。</li>
        <li class="aboutpt">领先的广告信息发布方式</li>
        <li class="aboutproduct">ESH i-ACT采用具有专利技术的广告信息交互方案，广告信息可以通过计算机网络，移动网络等直接发布至电视屏幕，大幅度提高信息发布业务的盈利能力。</li>
        <li class="aboutpt">灵活的信息定制方式</li>
        <li class="aboutproduct">革命性的定于传统的电视字幕发布方式，客户可以灵活的选择信息发布方式。</li>
        <li class="aboutpt">基于Cloud控制和管理</li>
        <li class="aboutproduct">广告信息在云端进行存储和审核，用户可以方便的更改信息内容，大幅度降低信息发布处理流程复杂度。</li>
        <li class="aboutpt">安全的信息过滤技术</li>
        <li class="aboutproduct">基于Cloud的关键信息过滤技术，人工审核验证机制，保证广告信息的合法性。</li>
        <li class="aboutpt">灵活的盈利方案</li>
        <li class="aboutproduct">最先进的广告定价策略及合作运营方案，保证业务的盈利能力和合理的。</li>
        </ul>
        <ul>
        <li><a href="images/t-2.png" target="_blank"><img src="images/t-2_s.png" width="500" height="511" /></a></li>
        </ul>
        </div>
</div> 
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>