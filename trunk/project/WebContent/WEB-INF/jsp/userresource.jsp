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

<!-- Add mousewheel plugin (this is optional) -->
<script type="text/javascript" src="jquery/jquery.mousewheel-3.0.6.pack.js"></script>

<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="source/jquery.fancybox.js?v=2.0.6"></script>
<link rel="stylesheet" type="text/css" href="source/jquery.fancybox.css?v=2.0.6" media="screen" />

<!-- Add Button helper (this is optional) -->
<link rel="stylesheet" type="text/css" href="source/helpers/jquery.fancybox-buttons.css?v=1.0.2" />
<script type="text/javascript" src="source/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>

<!-- Add Thumbnail helper (this is optional) -->
<link rel="stylesheet" type="text/css" href="source/helpers/jquery.fancybox-thumbs.css?v=1.0.2" />
<script type="text/javascript" src="source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>

<!-- Add Media helper (this is optional) -->
<script type="text/javascript" src="source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>

<script type="text/javascript">
$(document).ready(function() {
			/*
			 *  Simple image gallery. Uses default settings
			 */

			$('.fancybox').fancybox();

			/*
			 *  Different effects
			 */

			// Change title type, overlay opening speed and opacity
			$(".fancybox-effects-a").fancybox({
				helpers: {
					title : {
						type : 'outside'
					},
					overlay : {
						speedIn : 500,
						opacity : 0.95
					}
				}
			});

			// Disable opening and closing animations, change title type
			$(".fancybox-effects-b").fancybox({
				openEffect  : 'none',
				closeEffect	: 'none',

				helpers : {
					title : {
						type : 'over'
					}
				}
			});

			// Set custom style, close if clicked, change title type and overlay color
			$(".fancybox-effects-c").fancybox({
				wrapCSS    : 'fancybox-custom',
				closeClick : true,

				helpers : {
					title : {
						type : 'inside'
					},
					overlay : {
						css : {
							'background-color' : '#eee'
						}
					}
				}
			});

			// Remove padding, set opening and closing animations, close if clicked and disable overlay
			$(".fancybox-effects-d").fancybox({
				padding: 0,

				openEffect : 'elastic',
				openSpeed  : 150,

				closeEffect : 'elastic',
				closeSpeed  : 150,

				closeClick : true,

				helpers : {
					overlay : null
				}
			});

			/*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

			$('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});


			/*
			 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			 */

			$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : false,
				nextClick : true,

				helpers : {
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});

			/*
			 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
			*/
			$('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
					openEffect : 'none',
					closeEffect : 'none',
					prevEffect : 'none',
					nextEffect : 'none',

					arrows : false,
					helpers : {
						media : {},
						buttons : {}
					}
				});

			/*
			 *  Open manually
			 */

			$("#fancybox-manual-a").click(function() {
				$.fancybox.open('1_b.jpg');
			});

			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
					href : 'iframe.html',
					type : 'iframe',
					padding : 5
				});
			});

			$("#fancybox-manual-c").click(function() {
				$.fancybox.open([
					{
						href : '1_b.jpg',
						title : 'My title'
					}, {
						href : '2_b.jpg',
						title : '2nd title'
					}, {
						href : '3_b.jpg'
					}
				], {
					helpers : {
						thumbs : {
							width: 75,
							height: 50
						}
					}
				});
			});


		});
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
</script>
<style type="text/css">
	.fancybox-custom .fancybox-skin {
		box-shadow: 0 0 50px #222;
	}
</style>
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
	 <div class="leftinfo">
	        <div id="wbg">
	        <ul>
	        <li><img src="images/myap.png" /> </li>
	        <li id="my1"><a href="user.do?action=UserInfoAction">帐户信息</a></li>
	        <li id="my2"><a href="user.do?action=UserInfoAction&type=1">我的订单</a></li>
	        <li id="my3"><a href="user.do?action=UserInfoAction&type=2">我的资源</a></li>
	        <li id="my4"><a href="user_sale.html">我的业务</a></li>
	        <li id="my5"><a href="user_online.html">在线充值</a></li>
	        <li id="my6"><a href="user_oinfo.html">充值记录</a></li>
	        <li id="my7"><a href="user_byinfo.html">消费记录</a></li>
	        <li id="my8"><a href="logout.do?action=LogoutAction">退出登录</a></li>
	        </ul>
	        </div>
	 </div>
 	 <div class="rightinfo">
        
        <div id="wbg">
        <div>
        <ul>
        <li><img src="images/my_title3.png" width="160" height="30" /></li>
        <li>&nbsp;</li>
        <li class="userbytitle">
        <ul id="nav">
		<li><a class="fancybox" href="#inline1" title="注意：最多可以输入140个文字"><img src="images/Add.png" width="24" height="24" /></a>
		    &nbsp;&nbsp;&nbsp;&nbsp;<a class="fancybox" href="#inline2" title="图片格式：jpg、png；图片大小：100px x 100px"><img src="images/Add.png" width="24" height="24" /></a>
    		&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><img src="images/Bin.png" width="24" height="24" /></a>
    	</li>
		</ul>
        </li>
        <li class="byinfolist">
        <ul>
        <li><input name="" type="checkbox" value="" /></li>
        <li>No</li>
        <li class="byinfolistt">资源类型</li>
        <li class="byinfolistt">资源名称</li>
        <li class="byinfolistt">日期</li>
        <li class="byinfolistt">删除</li>
        </ul>
        </li>
        <li class="byinfolists">
        <ul>
        <li><input name="" type="checkbox" value="" /></li>
        <li>01</li>
        <li class="byinfolistt">文字</li>
        <li class="byinfolistt">宽带业务</li>
        <li class="byinfolistt">2012-7-15</li>
        <li class="byinfolistt">删除</li>
        </ul>
        </li>
        <li>
        </li>
        </ul>        
        </div>
    </div>
  </div> 
</div>
</div>
<jsp:include page="footer.jsp" flush="true" />
<div id="inline1" style="width:400px;display: none;">
		<h3>输入插播文字</h3>
        <p><textarea name="" cols="44" rows="5"></textarea></p>
</div>
<div id="inline2" style="width:400px;display: none;">
		<h3>输入插播图片</h3>
        <p><input type="file" size="40" /></p>
        <p><img src="images/ct-1.png" width="300" height="300" /></p>
</div>

</body>
</html>
