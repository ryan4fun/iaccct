<%@ page language="java" import="com.iact.action.SessionContainer" pageEncoding="UTF-8"%>
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
		 			$("#errpanel")[0].innerHTML = "正在登录， 请稍后。"
		 		},
		 		dataType:"json",
		 		async:false,
		 		data:params,
		 		success:function(data) {
		 			if (data.errorCode == 0) {
		 				window.location.href = basePath +"index.do?page=index.jsp";		
		 			} else {
		 				$("#errpanel")[0].innerHTML = data.errorMsg;
		 			}
		 		}
		 	});
		 }
		function refreshAuth(basePath) {
			$('#authImg')[0].src=basePath+"/auth";
		}
	</script>
	
	</head>
  <body>
  	 <!--  topline area -->
   	 <jsp:include page="topline.jsp" flush="true"/>
   	 <!--  login area -->
   	  	<%
        	SessionContainer sc = (SessionContainer)session.getAttribute("sessionContainer");	
        	if (sc == null || sc.getUser() == null) {	
        %>
        	<div class="logopan">
			<div class="logopansub">
			<div class="logo"></div>
		    <div class="login">
		    		<div><ul>
			        	<li class="user"></li>
			            <li><input name="loginName" type="text" id="loginName"/></li>
			            <li class="pass"></li>
			            <li><input type="password" name="password" id="password"/></li>
			            <li><input type="text" name="authCode" id="authCode"/></li>
			            <li><img src="<%=basePath%>/images/login_button.png" width="107" height="40" onclick="login();" /></li>
			        </ul>
			        </div>
		        <div>
		        <ul>
		        <li class="spaecst"></span></li>
		       	  <li><a href="f.do?page=user/register.jsp">免费注册</a> | <a href="f.do?page=user/forgetp.jsp">忘记密码</a></li>
		        	<li class="spaecs">
		        	<span class="err" id="errpanel">
		        	</li>
		            <li><img src="<%=basePath%>/auth" width="61" height="21" id="authImg"/></li>
		        	<li><a href="javascript:void(0);" onclick="refreshAuth('<%=basePath%>');">看不清？换一张</a></li>
		      	</ul>
		     	</div>
		    </div>
		    </div>
	     </div>  
        <%
        	} else {
        %>
        	<div class="logopan">
        	<div class="logopansub">
			<div class="logo"></div>
				显示用户登录成功区域，等lvjian GUI
			</div>
	    	</div>
        <%  }%>
   	 
     <!--   main area -->
     <div id="main">   
	  	<div id="gallery">
	    <div id="slides">  
	    <div class="slide"><img src="<%=basePath%>/img/sample_slides/d1.png" width="1000" height="300" alt="side" /></div>
	    <div class="slide"><img src="<%=basePath%>/img/sample_slides/d2.png" width="1000" height="300" alt="side" /></div>
	    <div class="slide"><img src="<%=basePath%>/img/sample_slides/d3.png" width="1000" height="300" alt="side" /></div>
	    <div class="slide"><img src="<%=basePath%>/img/sample_slides/d4.png" width="1000" height="300" alt="side" /></div>	      
	    </div>
	    <div id="menu">
	    <ul>
	        <li class="fbar">&nbsp;</li>
	        <li class="menuItem"><a href=""><img src="<%=basePath%>/img/sample_slides/1.png" alt="thumbnail" /></a></li>
	        <li class="menuItem"><a href=""><img src="<%=basePath%>/img/sample_slides/2.png" alt="thumbnail" /></a></li>
	        <li class="menuItem"><a href=""><img src="<%=basePath%>/img/sample_slides/3.png" alt="thumbnail" /></a></li>
	        <li class="menuItem"><a href=""><img src="<%=basePath%>/img/sample_slides/4.png" alt="thumbnail" /></a></li>
	    </ul> 
	    </div>
	  	</div>
	  	<jsp:include page="menu.jsp" flush="true"/>
	</div>	
	<jsp:include page="footer.jsp" flush="true"/>
  </body>
</html>
