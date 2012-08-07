<%@ page language="java" pageEncoding="UTF-8"%>
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
<jsp:include page="topline.jsp" flush="true" />
<jsp:include page="loginpanel.jsp" flush="true" />

<div id="main"> 
<div><img src="images/title_img-4.png" width="1000" height="120" /></div>  
<jsp:include page="menu.jsp" flush="true" />    
 <div class="leftinfo">
 	<jsp:include page="online.jsp" flush="true" />
 </div>
 <div class="rightinfo">
    <div id="wbg">
        <ul>
        <li><img src="images/sub_title_img-4.png" width="136" height="36" /></li>
        </ul>
        <ul>
        <li class="aboutpt"><a href="javasript:void(0);" name="q1">领先的广告信息发布方式</a></li>
        <li class="aboutproduct">ESH i-ACT采用具有专利技术的广告信息交互方案，广告信息可以通过计算机网络，移动网络等直接发布至电视屏幕，大幅度提高信息发布业务的盈利能力。</li>
        <li class="aboutpt"><a href="javasript:void(0);" name="q2">灵活的信息定制方式</a></li>
        <li class="aboutproduct">消息面，郭树清称20万亿储蓄闲置，可投股票；两部委通知：地方放松楼市调控要纠正；央行四周逆回购近5000亿，降准久唤不出；国际油价持续上涨，
        成品油跟涨预期强；深圳营改增试点方案已上报；险企投资无担保债券上限提高；新三板涨跌幅限制拟定30%，个人账户资产逾30万方可进入；李克强：要下决心把大病医保纳入全民医保；银监会将细化政策鼓励和引导民间资本进入银行业；电企告别极度深寒，三季度业绩或华丽反转；光伏全行业深陷资金链危局；首批3家创业板公司半年报亮相</li>
        <li class="aboutpt"><a href="javasript:void(0);" name="q3">基于Cloud控制和管理</a></li>
        <li class="aboutproduct">广告信息在云端进行存储和审核，用户可以方便的更改信息内容，大幅度降低信息发布处理流程复杂度。</li>
        <li class="aboutpt"><a href="javasript:void(0);" name="q4">安全的信息过滤技术</a></li>
        <li class="aboutproduct">查看已经公开“三公经费”的部门网站，一系列细化公开的举措引发关注。
　　“与上半年公开部门预算一样，此次各部门决算公开不仅统一了格式，而且内容更加细化，普遍增加了部门职能、机构组成等说明性材料，有的还提供了一年来的事业成效，更方便公众对比了解情况。”白景明说。
　　值得关注的是，今年在“三公经费”细化上亦有突破，比如详细说明了与“三公经费”支出相关的车辆购置数及保有量、因公出国(境)团组数及人数和公务接待等情况。
　　此外，今年相关部门在决算公开的文字说明中增加了名词解释，对预决算、财务管理和会计核算方面的专业名词进行了说明，对“三公经费”、行政经费的概念进行了解释。</li>
        <li class="aboutpt"><a href="javasript:void(0);" name="q5">灵活的盈利方案</a></li>
        <li class="aboutproduct">三公支出费用，该由谁出比较客观？自己告诉大家自己花了多少钱，相信与否是智商问题。我们的很多部门时刻在考验我们的智商。就三公支出而言，能否由第三方机构核定后公布呢？</li>
       
        </ul>
        </div>
  </div> 
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>