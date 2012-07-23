<%@ page language="java" import="com.iact.action.SessionContainer,
								 com.iact.vo.Platforminformation,
								 java.text.SimpleDateFormat,
								 java.util.List" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
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
        
        <% 
        	List<Platforminformation> ads = (List<Platforminformation>)request.getAttribute("ads");
        	int adsSize = 0;
        	if (ads != null) {
        		adsSize = ads.size();
        		int showSize = adsSize > 5 ? 5: adsSize;
        		for (int i = 0; i < showSize; i++) {
        			Platforminformation ad = ads.get(i);
        %>
       			 <li id="newstitle">.<a href="ad.do?action=OpenNewsAction&id=<%= ad.getId()%>"> <%= ad.getTitle()%></a></li><li id="newsdata"><%=sf.format(ad.getAddTime())%></li>
        <% 
        		}
        	}
        %>
        </ul>
        </div>
        <% 
        	if (adsSize > 5) {
        %>
         <div class="more"><a href="more.do?action=ListNewsAction">更多...</a></div>
        <% 
        	}
        %>
        </div>
        <div id="wbg">
        <div>
        <ul>
        <li><img src="images/Rss.png" width="145" height="32" /></li>
        
       <% 
        	List<Platforminformation> news = (List<Platforminformation>)request.getAttribute("news");
        	int newsSize = 0;
        	if (news != null) {
        		newsSize = news.size();
        		int showSize = newsSize > 5 ? 5: newsSize;
        		for (int i = 0; i < showSize; i++) {
        			Platforminformation n = news.get(i);
        %>
       			 <li id="newstitle">.<a href="ad.do?action=OpenNewsAction&id=<%=n.getId()%>"> <%= n.getTitle()%></a></li><li id="newsdata"><%=sf.format(n.getAddTime())%></li>
        <% 
        		}
        	}
        %>
        </ul>
        </div>
        <% 
        	if (newsSize > 5) {
        %>
         <div class="more"><a href="more.do?action=ListNewsAction" >更多...</a></div>
        <% 
        	}
        %>
    </div>
</div>  
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>