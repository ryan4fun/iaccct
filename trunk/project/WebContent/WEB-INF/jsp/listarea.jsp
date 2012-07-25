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
<link rel="stylesheet" type="text/css" href="css/default.css" />
<script type="text/javascript" src="script.js"></script>

<!--[if lte IE 7]>
<style type="text/css">
ul li{
	display:inline;
	/*float:left;*/
}
</style>
<![endif]-->
</head>

<body>&nbsp; 
<jsp:include page="topline.jsp" flush="true" />
<jsp:include page="loginpanel.jsp" flush="true" />

<div id="main"> 
<div><img src="images/title_img-6.png" width="1000" height="120" /></div>  
	<jsp:include page="menu.jsp" flush="true" />
    <div class="hotcity">
    <ul>
    <li>热门城市：</li>
    <li><a href="#">上海</a></li>
    <li><a href="#">北京</a></li>
    <li><a href="#">广州</a></li>
    <li><a href="#">深圳</a></li>
    <li><a href="#">武汉</a></li>
    <li><a href="#">天津</a></li>
    <li><a href="#">西安</a></li>
    <li><a href="#">南京</a></li>
    <li><a href="#">杭州</a></li>
    <li><a href="#">成都</a></li>
    <li><a href="#">重庆</a></li>
    </ul>
    </div>
   <div class="citylist">
   <ul>
   <li class="abcz">A</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">B</li>
   <li><a href="list-product.html">北京</a></li>
   <li>包头</li>
   <li>保定</li>
   <li>巴中</li>
   <li>蚌埠</li>
   <li>白银</li>
   <li>白城</li>
   <li>白山</li>
   <li>北海</li>
   <li>巴彦淖尔</li>
   <li>宝鸡</li>
   <li>百色</li>
   <li>本溪</li>
   <li>保山</li>
   <li>毕节</li>
   <li>博尔塔拉</li>
   <li>滨州</li>
   <li>亳州</li>
   <li>巴州</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">C</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">D</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">E</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">F</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">G</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">H</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">I</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">J</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">K</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">L</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">M</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">N</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">O</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">P</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">Q</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">R</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">S</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">T</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">U</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">V</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">W</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">X</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">Y</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">Z</li>
   <li><a href="#">鞍山</a></li>
   <li>安顺</li>
   <li>阿坝</li>
   <li>阿拉善</li>
   <li>阿里</li>
   <li>安康</li>
   <li>阿克苏</li>
   <li>安庆</li>
   <li>阿勒泰</li>
   <li>安阳</li>
   <li>澳门</li>
   </ul>
   </div>
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
