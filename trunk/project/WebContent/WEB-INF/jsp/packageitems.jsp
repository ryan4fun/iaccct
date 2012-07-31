<%@ page language="java" import="com.iact.vo.Bizpackage,
								 java.util.List,
								 java.util.Set,
								 com.iact.vo.Bizpackageitem,
								 com.iact.util.PageResultSet" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Bizpackage p = (Bizpackage)request.getAttribute("bizpackage");
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
	.failmsg{
		color:#a40000;
	}
</style>
<script type="text/javascript">
var basePath = "<%=basePath%>";
var price = <%=p.getPrice() %>;
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
	$( "#plandate" ).datepicker({
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

 if (pid == 'poptext') {
 	$("#textcheck").get(0).checked = "checked";
 } else {
 	$("#imgcheck").get(0).checked = "checked";
 }
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

function showResArea(type) {
	if (type == 0) {
		$("#restitle").get(0).innerHTML="创建资源：";
		$("#resarea").get(0).innerHTML='<input type="radio" name="restype" checked="checked" onclick="popDiv(\'poptext\');"/><a href="javascript:void(0);"  title="注意：最多可以输入140个文字"><img src="images/131s.png" width="24" height="24" /></a>'
		   +'&nbsp;&nbsp;&nbsp;&nbsp;'
		   +'<input type="radio" name="restype" onclick="popDiv(\'popimg\')";/>' 
		   +'<a href="javascript:void(0);" title="图片格式：jpg、png；图片大小：100px x 100px"><img src="images/130s.png" width="24" height="24" /></a>'
 			;
	} else {
		$("#restitle").get(0).innerHTML="选择资源：";
		$("#resarea").get(0).innerHTML='<select name="resid" style="width:160px;">'+
          '<option value="文字1">文字1</option>'+
          '<option value="文字2">文字2</option>'+
          '<option value="文字3">文字3</option>'+
          '<option value="文字4">文字4</option>'+
          '<option value="文字5">文字5</option>'+
          '<option value="图片1">图片1</option>'+
          '</select>'+
          ' <span style="color:#F60;padding-left:10px;">(该项只对登陆用户开放)</span>';
	}
}

function submitOrder() {
	
	if (!$(plandate).val()) {
		$("#lperr").html("&nbsp;&nbsp;计划日期不能为空");
		return;
	} else {
		$("#lperr").html("");
	}
	if (!$(sdate).val()) {
		$("#sperr").html("&nbsp;&nbsp;计划开始时间不能为空");
		return;
	} else {
		$("#sperr").html("");
	}
	if (!$(edate).val()) {
		$("#eperr").html("&nbsp;&nbsp;计划结束不能为空");
		return;
	} else {
		$("#eperr").html("");
	}
	
	var pnum = $("#pnum").val();
	var reg = new RegExp("^[0-9]*$");
	if (!pnum || !reg.test(pnum)) {
		$("#pnerr").html("请输入数字");
		return;
	} else {
		$("#pnerr").html("");
	}
	var subtitle = $("#subtitle").val();
	if (!subtitle) {
		alert("请选择资源并输入必要资源字段");
		return;
	}
	
	$("#orderform").submit();
}

function caltotalprice(obj) {
	var num = obj.value;
	if (num == undefined) {
		num = 1;
	}
	var total = num * price;
	$("#totalprice").get(0).innerHTML  = "" + total + "￥";
}

function submitRes(resType) {
	var subtitle = null;
	var desc = null;
	var resfile = null;
	if (resType == 0) {
		subtitle = $("#tsubtitle").val();
		desc = $("#tdesc").val();
	} else {
		subtitle = $("#isubtitle").val();
		desc = $("#idesc").val();
		var scale = $("iscale").val();
		$("imgscale").val(scale);
	}
	
	$("#subtitle").val(subtitle);	
	$("#desc").val(desc);
	
	if (resType == 0) {
		hideDiv('poptext');
	} else {
		hideDiv('popimg');
	}
}

</script>
</head>
<body>
<form id="orderform" action="order.do" method="post">
<input type="hidden" name="action" value="BizPackageAction" />
<input type="hidden" name="pid" value="<%=p.getId()%>" />
<input type="hidden" name="ptype" value="order" />
<input type="hidden" name="pinfo" value="<%=p.getDescription()%>" />
<input type="hidden" name="price" value="<%=p.getPrice()%>" />

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
        <li class="product_info_titles"><%=p.getName() %></li>
        <li class="myinfo_title">开通地区：</li><li><%=p.getBizArea() %></li>   
        <li class="myinfo_title">开始时间：</li><li><%=p.getBeginTime() %></li>   
        <li class="myinfo_title">结束时间：</li><li><%=p.getEndTime()%></li>   
        <li class="myinfo_title">套餐单价：</li><li><%=p.getPrice() %>￥</li>
         <li class="myinfo_title">播放次数：</li><li><%=p.getPlayNumber() %></li>
        <li class="myinfo_title">套餐描述：</li>
        <li><%=p.getDescription() %></li>
        <li class="myinfo_title">节目列表：</li>
        <li>
         <table cellspacing="0" cellpadding="0" style="margin:5px;">
		        	<tr class="product_info">
		        	<% 
		        		Set<Bizpackageitem> items = p.getItems();
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
        </li>
        <li class="myinfo_title">计划日期：</li>  
        <li><input type="text" class="searchinput" id="plandate" name="plandate" readonly="readonly"/><span class='failmsg' id='lperr'></span></li>
        <li class="myinfo_title">计划开始：</li>  
        <li><input type="text" class="searchinput" id="sdate" name="psdate" readonly="readonly"/><span class='failmsg' id='sperr'></span></li>
        <li class="myinfo_title">计划结束：</li>  
        <li><input type="text" class="searchinput" id="edate" name="pedate" readonly="readonly"/><span class='failmsg' id='eperr'></span></li>
        <li class="myinfo_title">资源类型：</li>
        <li>
         <input type="radio" name="resfrom" onclick="showResArea(0);" checked="checked" value="0"/><label> 创建资源</label>
         &nbsp;&nbsp;&nbsp;<input type="radio" name="resfrom" onclick="showResArea(1);"; value="1"/><label>选择资源</label>
        </li>
        <li class="myinfo_title" id="restitle">创建资源：</li>
        <li id="resarea">
			<input type="radio" name="restype"  onclick="popDiv('poptext');" value="0" checked="checked" id="textcheck"/>
			<a href="javascript:void(0);" onclick="popDiv('poptext');" title="注意：最多可以输入140个文字">
			<img src="images/131s.png" width="24" height="24" />
			</a>
		    &nbsp;&nbsp;&nbsp;&nbsp;
		    <input type="radio" name="restype"  onclick="popDiv('popimg');"  value="1" id="imgcheck"/>
		    <a href="javascript:void(0);" onclick="popDiv('popimg');"  title="图片格式：jpg、png；图片大小：100px x 100px">
		    <img src="images/130s.png" width="24" height="24" />
		    </a> 
       </li>
       <li class="myinfo_title">套餐数量：</li><li><input name="pnum" id="pnum" type="text" value="1" class="searchinput" onblur="caltotalprice(this);"/>
       <span class='failmsg' id='pnerr'></span></li>
       <li class="myinfo_title">价格合计：</li><li style="color:#ff0000;" id="totalprice"><%=p.getPrice() %>￥</li>
       <li class="myinfo_title">&nbsp;</li><li><a href="javascript:void(0);" onclick="submitOrder();"><img src="images/by_button.png" width="86" height="33" /></a></li>
       </ul>        
       </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" flush="true" />

<input type="hidden" name="subtitle" id="subtitle"/>
<input type="hidden" name="desc" id="desc"/>
<input type="hidden" name="imgScale" id="imgscale"/>
<input type="hidden" name="fileName" id="fileName"/>
</form>
<div id="popimg" class="popimg">
	<div class="poptitle">发布图片
	<img src="images/close_button.png" style="float:right" onclick="hideDiv('popimg')" /></div>
    <div><ul><li class="poplefttitle">图片规格：</li><li class="popinfo">
      <select name="imgScale" id="iscale">
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
    <div><ul><li class="poplefttitle">标题：</li><li class="popinfo"><input name="isubtitle" type="text" id="isubtitle"/></li></ul></div>
    <div><ul><li class="poplefttitle">描述：</li><li class="popinfo">
      <label for="textarea"></label>
      <textarea name="idesc" id="idesc"" cols="45" rows="5"></textarea>
    </li>
    </ul></div>
    <div><ul><li class="poplefttitle">&nbsp;</li><li class="popinfo">
    <a href="javascript:void(0);" onclick="submitRes(1);">
    <img src="images/img_button.png" width="86" height="33" />
    </a></li>
    </ul></div>
</div>

<div id="poptext" class="popimg" style="height:300px;">
	<div class="poptitle">发布文字
	<img src="images/close_button.png" style="float:right" onclick="hideDiv('poptext')" /></div>
    <div><ul><li class="poplefttitle">标题：</li><li class="popinfo"><input name="tsubtitle" type="text" id="tsubtitle" /></li></ul></div>
    <div><ul><li class="poplefttitle">描述：</li><li class="popinfo">
      <label for="textarea"></label>
      <textarea name="tdesc" id="tdesc" cols="45" rows="5"></textarea>
    </li>
    </ul></div>
    <div><ul><li class="poplefttitle">&nbsp;</li><li class="popinfo">
    <a href="javascript:void(0);" onclick="submitRes(0);">
    <img src="images/img_button.png" width="86" height="33" />
    </a></li>
    </ul></div>
</div>

</body>
</html>