<%@ page language="java" import="java.util.*,
								 com.iact.IActException" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>I-ACT爱插播</title>
		<link rel="icon" href="<%=basePath%>/images/ico.ico"
			type="image/x-icon" />
		<link rel="shortcut icon" href="<%=basePath%>/images/icon.ico"
			type="image/x-icon" />
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		
		<style>
			.errorarea {
				background-image:url(images/404.png);	
				width:490px;
				height:248px;
			}
			
			.errormsg {
				width:490px;
				font-size:24px;
				color:#f60;
				text-align:center;
				background-color:#fff;
				padding-top:5px;
				padding-bottom:5px;
			}
			
		</style>
	</head>

	<body>
	<jsp:include page="topline.jsp" flush="true"/>
	<jsp:include page="loginpanel.jsp" flush="true"/>
	<div id="main">   
		  <div id="userpage">
	      <jsp:include page="menu.jsp" flush="true"/>
	 	  <div class="leftinfo">
 	      <jsp:include page="online.jsp" flush="true" />
		  </div>		
	 	   <div class="rightinfo">
	 	   <div id="wbg" style="padding-left:100px;"> 
	 	   	<div class="errorarea">
	 	   		&nbsp;
		  	</div>
		  	<div class="errormsg">
		  		对不起,系统出错!
	 	   		<br/>
			 	 <%
					IActException error = (IActException)request.getAttribute("error");
					out.println(error.getMessage());
			  	%>
		  	</div>
		  	</div>
		  </div>
		</div>
		<jsp:include page="footer.jsp" flush="true"/>
	</div>
	</body>
</html>
