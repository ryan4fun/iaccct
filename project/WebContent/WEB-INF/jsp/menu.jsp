<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="menupan">
   <ul>
   <li><a href="index.html"><img src="<%=basePath %>/images/menu_home.png" width="48" height="48" /></a><br />
     <a href="index.html">首 页</a></li>
   <li><a href="list.html"><img src="<%=basePath %>/images/menu_list.png" width="48" height="48" /></a><br />
     <a href="list.html">节目套餐</a></li>
   <li><a href="help.html"><img src="<%=basePath %>/images/menu_help.png" width="48" height="48" /></a><br />
     <a href="help.html">使用方式</a></li>
   <li><a href="message.html"><img src="<%=basePath %>/images/menu_mesage.png" width="48" height="48" /></a><br />
     <a href="message.html">短信平台</a></li>
   <li><a href="news.html"><img src="<%=basePath %>/images/menu_news.png" width="48" height="48" /></a><br />
     <a href="news.html">最新资讯</a></li>
   <li><a href="qa.html"><img src="<%=basePath %>/images/menu_QA.png" width="48" height="48" /></a><br />
     <a href="qa.html">常见问题</a></li>
   <li><a href="cantcat.html"><img src="<%=basePath %>/images/menu_cancat.png" width="48" height="48" /></a><br />
     <a href="cantcat.html">联系我们</a></li>
   </ul>
</div>