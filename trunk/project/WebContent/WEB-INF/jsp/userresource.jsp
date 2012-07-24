<%@ page language="java" pageEncoding="UTF-8" import="java.util.List, 
													   com.iact.vo.Userresource,
													   java.text.SimpleDateFormat" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");

List<Userresource> ures  = (List<Userresource>)request.getAttribute("resources");

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
<!-- Add jQuery library -->
<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>
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

function submitUserRes(fid) {
	$("#" + fid).get(0).submit();
}
	
</script>
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
  <div id="userpage">
     <jsp:include page="menu.jsp" flush="true" />
     <jsp:include page="userleft.jsp" flush="true" />

 	 <div class="rightinfo">
        <div id="wbg">
        <div>
        <ul>
        <li><img src="images/my_title3.png" width="160" height="30" /></li>
        <li>&nbsp;</li>
        <li class="userbytitle">
        <ul id="nav">
		<li>
			<a href="javascript:void(0);" onclick="popDiv('poptext');" title="注意：最多可以输入140个文字"><img src="images/131s.png" width="24" height="24" /></a>
		    &nbsp;&nbsp;&nbsp;&nbsp;
		    <a href="javascript:void(0);"  onclick="popDiv('popimg');" title="图片格式：jpg、png；图片大小：100px x 100px"><img src="images/130s.png" width="24" height="24" /></a>
    		&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onclick="delRes();"><img src="images/Bin.png" width="24" height="24" /></a>
    	</li>
		</ul>
        </li>
        <li class="byinfolist">
        <ul>
        <li><input name="" type="checkbox" value="" /></li>
        <li class="byinfolistt">资源名称</li>
        <li class="byinfolistt">资源类型</li>
        <li class="byinfolistt">日期</li>
        <li class="byinfolistt">状态</li>
        <li class="byinfolistt">删除</li>
        </ul>
        </li>
        <% 
        	int size = ures == null ? 0 : ures.size();
        	for (int i = 0; i < size; i++) {
       			Userresource r = ures.get(i);
       %>
        <li class="byinfolists">
        <ul>
        <li><input name="" type="checkbox" value="" /></li>
        <li class="byinfolistt"><%=r.getSubtitle() %></li>
        <li class="byinfolistt"><%=r.getSpotType() %></li>
        <li class="byinfolistt"><%=sf.format(r.getAddTime()) %></li>
        <li class="byinfolistt"><%=r.getVerifyStatus()%></li>
        <li class="byinfolistt">删除</li>
        </ul>
        </li>
       <%
        	}
        
        %>
    
        <li>
        </li>
        </ul>        
        </div>
    </div>
  </div> 
</div>
</div>
<jsp:include page="footer.jsp" flush="true" />
<div id="popimg" class="popimg">
	<form action="user.do" id="iForm" method="post">
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
    <a href="javascript:void(0);" onclick="submitUserRes('iForm');">
    <img src="images/img_button.png" width="86" height="33" />
    </a></li>
    </ul></div>
    </form>
</div>

<div id="poptext" class="popimg" style="height:300px;">
	<form action="user.do" id="tForm" method="post">
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
    <a href="javascript:void(0);" onclick="submitUserRes('tForm');">
    <img src="images/img_button.png" width="86" height="33" />
    </a></li>
    </ul></div>
    </form>
</div>
</body>
</html>
