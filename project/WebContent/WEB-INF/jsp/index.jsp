<%@ page language="java" import="com.iact.action.SessionContainer,
								 com.iact.vo.Platforminformation,
								 com.iact.vo.Bizarea,
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
	
	</head>
  <body>
  	 <!--  topline area -->
   	 <jsp:include page="topline.jsp" flush="true"/>
   	 <!--   login panel area -->
   	 <jsp:include page="loginpanel.jsp" flush="true" />
   	 
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
	  	<div class="leftinfo">
        <div id="wbg">
        <ul>
       	 <li><img src="images/qa.png" width="102" height="24" /></li>
	  	 <li><a href="f.do?page=qa.jsp#q1">领先的广告信息发布方式</a></li>
       	 <li><a href="f.do?page=qa.jsp#q2">灵活的信息定制方式</a></li>
         <li><a href="f.do?page=qa.jsp#q3">基于Cloud控制和管理</a></li>
         <li><a href="f.do?page=qa.jsp#q4">安全的信息过滤技术</a></li>
         <li><a href="f.do?page=qa.jsp#q5">灵活的盈利方案</a></li>
         <li class="more"><a href="f.do?page=qa.jsp">更多...</a></li>
		</ul>
        </div>
        <!--  online area -->
       	<jsp:include page="online.jsp" flush="true" />
  	</div>	
  	
  	<div class="rightinfo">
  		<div id="wbg">
		<div class="rightinfodiv">
        <ul>
        <% 
        	List<Bizarea> areas = (List<Bizarea>)request.getAttribute("areas");
        	int aSize = 0;
        	if (areas != null) {
        		aSize = areas.size();
        		for (int i = 0; i < aSize; i++) {
        			Bizarea a = areas.get(i);
        %>
       			 <li><a href="list.do?action=ListPackagesAction&bizarea=<%= a.getId()%>"> <%= a.getName()%></a></li>
        <% 
        		}
        	}
        %>
        </ul>
        </div>
        <div class="more"><a href="more.do?action=OpenAreasAction">更多...</a></div>
        </div>
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
         <div class="more"><a href="more.do?action=ListNewsAction">更多...</a></div>
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
         <div class="more"><a href="more.do?action=ListNewsAction" >更多...</a></div>
    </div>
  </div>  
</div>	
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>
