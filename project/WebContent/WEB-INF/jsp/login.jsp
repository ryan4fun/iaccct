<%@ page language="java" import="com.iact.action.SessionContainer" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
    <base href="<%=basePath%>"/>
    <title>I-ACT爱插播</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="icon" href="<%=basePath %>/images/ico.ico" type="image/x-icon"/> 
	<link rel="shortcut icon" href="<%=basePath %>/images/icon.ico" type="image/x-icon"/> 
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/default.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/style.css" />
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
		 		},
		 		dataType:"json",
		 		async:false,
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
    <!--  topline area -->
   	 <jsp:include page="topline.jsp" flush="true"/>
	<div id="main">   
	 <jsp:include page="menu.jsp" flush="true"/>
	 <div class="rege">
		<div class="container">
            <div class="welcome">欢迎登陆本站</div>
            <div class="content">
              <div class="err" id="errpanel"></div>
              <ul>
              		<li>
                    <div class="reglabel">用户名/手机号码：</div>
                    <div><input name="loginName" type="text" class="reginput" id="loginName"/></div>
                    <div class="reginfo">&nbsp;</div>
                    <div class="reglabel">密 码：</div>
                    <div><input name="password" type="password" class="reginput" id="password"/></div>
                    <div class="reginfo">&nbsp;</div>
                    
                    <div class="reglabel">验证码：</div>
                    <div><input name="authCode" type="text" class="reginput" id="authCode"/></div>
                    <div class="reginfo"><img src="<%=basePath%>/auth" id="authImg"/>
					<a href="javascript:void(0);" onclick="refreshAuth('<%=basePath%>');">看不清？换一张</a>
					</div>
                    <div class="reglabel">&nbsp;</div>
                    <div><img src="images/login_button.png" width="107" height="40" onclick="login();"/></div>
                	</li>
                </ul>  
            </div>
      </div>
    </div>
    </div>
   	<jsp:include page="footer.jsp" flush="true"/>
  </body>
</html>
