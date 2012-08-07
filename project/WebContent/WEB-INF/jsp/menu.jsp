<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="menupan">
   <ul>
   <li><a href="index.html"><img src="<%=basePath %>/images/menu_home.png" width="48" height="48" /></a><br />
     <a href="index.do?action=IndexAction">首 页</a></li>
   <li><a href="list.do?action=ListPackagesAction"><img src="<%=basePath %>/images/menu_list.png" width="48" height="48" /></a><br />
     <a href="list.do?action=ListPackagesAction">节目套餐</a></li>
   <li><a href="f.do?page=help.jsp"><img src="<%=basePath %>/images/menu_help.png" width="48" height="48" /></a><br />
     <a href="f.do?page=help.jsp">使用方式</a></li>
   <li><a href="f.do?page=sms.jsp"><img src="<%=basePath %>/images/menu_mesage.png" width="48" height="48" /></a><br />
     <a href="f.do?page=sms.jsp">短信平台</a></li>
   <li><a href="f.do?page=news.jsp"><img src="<%=basePath %>/images/menu_news.png" width="48" height="48" /></a><br />
     <a href="f.do?action=ForwardNewsAction">最新资讯</a></li>
   <li><a href="f.do?page=qa.jsp"><img src="<%=basePath %>/images/menu_QA.png" width="48" height="48" /></a><br />
     <a href="f.do?page=qa.jsp">常见问题</a></li>
   <li><a href="f.do?page=contact.jsp"><img src="<%=basePath %>/images/menu_cancat.png" width="48" height="48" /></a><br />
     <a href="f.do?page=contact.jsp">联系我们</a></li>
   </ul>
</div>