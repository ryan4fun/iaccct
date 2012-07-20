<%@ page language="java" pageEncoding="UTF-8"%>
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
<script>
	function redirect2Login() {
		window.location.href="f.do?page=login.jsp";
	}
	document.onreadystatechange = function(){
        setTimeout(redirect2Login, 3000);
	};
</script>
</head>

<body>
<jsp:include page="topline.jsp"  flush="true" />
<div id="main">   
    <jsp:include page="menu.jsp"  flush="true" />
    <div class="rege">
    <ul class="step">
    <li>填写用户信息</li>
    <li>验证账户信息</li>
    <li>注册成功</li>
    </ul>
<div class="container">
                       
            <div class="content">
              <ul>
                <li>
                    <p><img src="images/regok.png" width="660" height="492" /></p>
                </li>
              </ul>
            </div>
      </div>
    </div>
</div>
<jsp:include page="footer.jsp"  flush="true" />
</body>
</html>
