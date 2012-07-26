<%@ page language="java" import="com.iact.vo.Bizpackage,
								 java.util.List,
								 com.iact.util.PageResultSet" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Bizpackage p = (Bizpackage)request.getAttribute("bizpackage");
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

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
	<link rel="stylesheet" href="jquery/jquery.ui.datepicker.css"/>
	<link rel="stylesheet" href="jquery/jquery.ui.theme.css"/>
	<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>
	<script src="jquery/jquery.ui.core.js"></script>
	<script src="jquery/jquery.ui.widget.js"></script>
	<script src="jquery/jquery.ui.datepicker.js"></script>
	<script src="jquery/jquery.ui.datepicker-zh-CN.js"></script>
	<script type="text/javascript" src="<%=basePath %>/js/iact.js"></script>

	<!--[if lte IE 7]>
	<style type="text/css">
	ul li{
		display:inline;
		/*float:left;*/
	}
	</style>
	<![endif]-->
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<style>
	.mask {
        background-color:#eee;
        position:absolute;
        top:0px;
        left:0px;
        opacity:0.6;
	}
</style>
<script type="text/javascript">
var basePath = "<%=basePath%>";
$(function() {
	$( "#sdate" ).datepicker({
		showOn: "button",
		buttonImage: "images/calendar.png",
		buttonImageOnly: true,
		prevText:'',
		nextText:''
	});
	$( "#edate" ).datepicker({
		showOn: "button",
		buttonImage: "images/calendar.png",
		buttonImageOnly: true,
		prevText:'',
		nextText:''
	});
 });

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

function popDiv(pid) {

 var pobj = $("#"+pid);
 var w = document.body.clientWidth;
 var h = document.body.clientHeight ;
 
    var ph = pobj.height();       
    var pw = pobj.width();    
     
$("<div class='mask'/>")
	 				.width(document.body.scrollWidth)
	 				.height(document.body.scrollHeight)
	 				.appendTo("body");
 pobj.css({"position":"absolute"})
 				.animate({left: w/2-pw/2,    
                     top: h/2-ph/2, opacity: "show" }, "slow");
}
	
function hideDiv(pid) {
	$(".mask").remove();
	var pobj = $("#"+pid);
	pobj.animate({left: 0, top: 0, opacity: "hide" }, "slow");   
}

function uploadImage() {
	$.ajaxFileUpload({
		  url:'user.do?action=UserResourceAction&type=upload',
		  secureuri:false,
		  fileElementId:'f',
		  dataType: 'json',
		  beforeSend:function(){
		  	alert("before");
		  },
		  success: function (data, status){
		    if(data.errorCode == 0){
		    	$("#prevImg").get(0).src="images/temp/"+data.fileName;
		    	$("#fileName").get(0).value=data.fileName;
		    } else{
		       alert('上传失败！');
		    }
		 }
	});
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
        <div>
        <ul>
        <li class="product_info_titles">节目套餐1</li>
        <li id="myinfo_title">业务代码：</li><li>123455679</li>
        <li id="myinfo_title">开通地区：</li><li>昆明</li>      
        <li id="myinfo_title">套餐名称：</li><li>节目套餐1</li>
        <li id="myinfo_title">套餐单价：</li><li>3000￥</li>
        <li id="myinfo_title">套餐描述：</li>
        <li>
        <ul class="myinfo_info">
        <li class="myinfo_info_type">昆明1台</li>
        <li class="myinfo_info_dt">轩辕剑.天之痕</li>
        <li class="myinfo_info_dt">法制在线</li>
        <li class="myinfo_info_type">昆明2台</li>
        <li class="myinfo_info_dt">天涯明月刀</li>
        <li class="myinfo_info_dt">动物世界</li>
        <li class="myinfo_info_type">云南卫视经济频道</li>
        <li class="myinfo_info_dt">大口马牙</li>
        </ul>
        </li>
        <li id="myinfo_title">开始时间：</li>  
        <li><input type="text" class="searchinput" id="sdate" name="sdate" readonly="readonly"/></li>
        <li id="myinfo_title">结束时间：</li>  
        <li><input type="text" class="searchinput" id="edate" name="edate" readonly="readonly"/></li>
        <li id="myinfo_title">已有资源：</li>
        <li><select name="" style="width:160px;">
          <option value="选择资源">选择资源</option>
          <option value="文字1">文字1</option>
          <option value="文字2">文字2</option>
          <option value="文字3">文字3</option>
          <option value="文字4">文字4</option>
          <option value="文字5">文字5</option>
          <option value="图片1">图片1</option>
        </select>
        <span style="color:#F60;padding-left:10px;">(该项只对登陆用户开放)</span>
        </li>
        <li id="myinfo_title">创建资源：</li>
        <li>
			<a href="javascript:void(0);" onclick="popDiv('poptext');" title="注意：最多可以输入140个文字"><img src="images/131s.png" width="24" height="24" /></a>
		    &nbsp;&nbsp;&nbsp;&nbsp;
		    <a href="javascript:void(0);"  onclick="popDiv('popimg');" title="图片格式：jpg、png；图片大小：100px x 100px"><img src="images/130s.png" width="24" height="24" /></a>
       </li>
       <li id="myinfo_title">播放次数：</li><li><input name="" type="text" value="1" class="searchinput" /></li>
       <li id="myinfo_title">价格合计：</li><li style="color:#ff0000;">3000￥</li>
       <li id="myinfo_title">&nbsp;</li><li><a href="user_by.html"><img src="images/by_button.png" width="86" height="33" /></a></li>
       </ul>        
       </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" flush="true" />
<div id="popimg" class="popimg">
	<input type="hidden" value="UserResourceAction" name="action" />
	<input type="hidden" value="1" name="resType" />
	<input type="hidden" value="save" name="type" />
	<input type="hidden" value="save" name="fileName" id="fileName" />
	<div class="poptitle">发布图片
	<img src="images/close_button.png" style="float:right" onclick="hideDiv('popimg')" /></div>
    <div><ul><li class="poplefttitle">图片规格：</li><li class="popinfo">
      <select name="select" id="imgScale">
        <option value="0">120×80(最佳)</option>
        <option value="1">160×120</option>
      </select>
    </li>
    </ul></div>
     <div>
     <ul>
     <li class="poplefttitle">选择图片：</li>
     <li class="popinfo"><input type="file" size="40" onchange="uploadImage();" id="f" name="f"/></li>
     </ul>
     </div>
    <div><ul><li class="poplefttitle">&nbsp;</li><li class="popinfo"><img src="images/truck.png" width="120" height="80" id="prevImg"/></li></ul></div>
    <div><ul><li class="poplefttitle">标题：</li><li class="popinfo"><input name="subTitle" type="text" /></li></ul></div>
    <div><ul><li class="poplefttitle">描述：</li><li class="popinfo">
      <label for="textarea"></label>
      <textarea name="desc" id="textarea" cols="45" rows="5"></textarea>
    </li>
    </ul></div>
    <div><ul><li class="poplefttitle">&nbsp;</li><li class="popinfo">
    <a href="javascript:void(0);" onclick="">
    <img src="images/img_button.png" width="86" height="33" />
    </a></li>
    </ul></div>
  
</div>

<div id="poptext" class="popimg" style="height:300px;">
	<input type="hidden" value="UserResourceAction" name="action" />
	<input type="hidden" value="0" name="resType" />
	<input type="hidden" value="save" name="type" />
	<div class="poptitle">发布文字
	<img src="images/close_button.png" style="float:right" onclick="hideDiv('poptext')" /></div>
    <div><ul><li class="poplefttitle">标题：</li><li class="popinfo"><input name="subTitle" type="text" /></li></ul></div>
    <div><ul><li class="poplefttitle">描述：</li><li class="popinfo">
      <label for="textarea"></label>
      <textarea name="desc" id="textarea" cols="45" rows="5"></textarea>
    </li>
    </ul></div>
    <div><ul><li class="poplefttitle">&nbsp;</li><li class="popinfo">
    <a href="javascript:void(0);" onclick="">
    <img src="images/img_button.png" width="86" height="33" />
    </a></li>
    </ul></div>
</div>
</body>
</html>