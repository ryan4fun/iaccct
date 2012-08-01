<%@ page language="java" import="com.iact.vo.Bizpackage,
								 java.util.List,
								 java.util.Set,
								 com.iact.util.PageResultSet" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.iact.vo.Bizpackageitem"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
PageResultSet result= (PageResultSet)request.getAttribute("result");
List<Bizpackage> packages = (List<Bizpackage>)result.getData();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

String url = "list.do?action=ListPackagesAction";
String pageNav = result.getToolBar(url);

String packTitle = (String)request.getAttribute("packTitle");
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
<div><img src="images/title_img-6.png" width="1000" height="120" /></div> 
<jsp:include page="menu.jsp" flush="true" />    
<div class="leftinfo">
 	<jsp:include page="online.jsp" flush="true" />
</div>
  <div class="rightinfo">
    <div id="wbg">
        <ul class="product_titlebg">
        <li class="product_title"><%=packTitle %></li>
        </ul>
       
        <% 
        	for (int i = 0, size = packages.size(); i < size; i++) {
        		Bizpackage p = packages.get(i);
        		Set<Bizpackageitem> items = p.getItems();
        		int isize = items == null ? 0 : items.size();
        %> 
		         <ul class="product_type">
		        <li><%=p.getName() %></li>
		        </ul>
		        <table cellspacing="0" cellpadding="0" style="margin:5px;">
		        	<tr class="product_info">
		        	<% 
        	    		for (Bizpackageitem item: items) {
					%>
					<td class="product_info_title">昆明1台</td>
        	    	<%
        	    		}
        	    	%>
        	    	</tr> 
        	    	<tr class="product_info">
        	    	<% 
        	    		for (Bizpackageitem item: items) {
					%>
					 <td class="product_info_title" style="background-color:#fff;"><%= item.getName()%></td>
        	    	<%
        	    		}
        	    	%> 
        	    	</tr>
		        </table>
        <% 
       		 }
        %>

        <ul>
        <li class="cb"><a href="detail.do?action=BizPackageAction&pid=1">
        <img src="images/bydt_button_n.png" width="120" height="33" onmouseover="this.src='images/bydt_button_h.png';" onmouseout="this.src='images/bydt_button_n.png';"/>
         </a></li>
        </ul>
         <div>
     	 <%=pageNav%>      
        </div>
        </div>
  </div>
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>