<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

<script type="text/javascript">
	function uploadImage() {
		$.ajaxFileUpload({
			  url:'user.do?action=UserResourceAction&type=0',
			  secureuri:false,
			  fileElementId:'f',
			  dataType: 'json',
			  beforeSend:function(){
			  	alert("before");
			  },
			  success: function (data, status){
			    if(data.errorCode == 0){
			    	$("#prevImg").get(0).src="images/temp/"+data.fileName;
			    } else{
			       alert('上传失败！');
			    }
			 }
		});
	}
	
	function submitUserRes() {
	
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
 	 <div class="rightinfo">
        <div id="wbg">
        <div>
        <ul>
        <li><img src="images/my_title3.png" width="160" height="30" /></li>
        <li>&nbsp;</li>
        </ul>
        <div>
        	<form action="user.do">
			<input type="hidden" value="UserInfoAction" name="action" />
			<label>字幕:&nbsp;</label><input type="text" name="title"/>
        	<br/>
        	<label>图片:&nbsp;</label><input type="file" onchange="uploadImage();" id="f" name="f" />
        	<!-- 
        	accept="image/x-png"
        	-->
        	<br/>
       		<img src="" width="160" height="120"  id="prevImg"/>
       		<br/>
       		<label>描述:&nbsp;</label><textarea name="desc" style="width:400px;height=100px;"></textarea>
       		<br/>
       		<input type="submit" onclick="submitUserRes();"/>
       		</form>
        </div>
        </div>
    </div>
  </div> 

</body>
</html>
