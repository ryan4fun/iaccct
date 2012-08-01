<%@ page language="java" pageEncoding="UTF-8"
						 import="com.iact.vo.Area,
						 		 java.util.List" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

List<Area> areas = (List<Area>)request.getAttribute("areas");
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
<script src="jquery/jquery-1.7.2.min.js"></script>
<script src="js/vanadium.js"></script>
<script src="js/iact.js"></script>
<style>
form *{
	padding:0; 
	margin:0
}

form {
	margin:20px; 
	background:#eee; 
	padding:5px 10px;
}

input {
	line-height: 36px;
	height: 27px;
	width: 200px;
	border: 1px solid #83a4c5;
	border-radius: 5px;
	padding: 5px;
	text-align: left;
}

checkbox {
	line-height: 36px;
	height: 37px;
	width: 20px;
}

select {
	line-height: 36px;
	height: 36px;
	width: 203px;
	border: 1px solid #83a4c5;
	border-radius:5px;
	padding: 5px;
}

input.rightformcss,select.rightformcss,textarea.rightformcss {
		border:1px solid green;
		line-height: 32px;
		height: 32px;
		width: 203px;
		padding:2px;
		border-radius:5px;
}

.failmsg{
		color:#a40000;
}

.msgvaluecss{font-style:italic;}

input.failformcss,select.failformcss,textarea.failformcss{
	border:1px solid #a40000;
	line-height: 32px;
	height: 32px;
	width: 203px;
	border-radius:5px;
	padding: 2px;
}

.reglabel {
	width: 100px;
	height: 36px;
	display: inline-block;
	line-height: 36px;
	margin: 5px;
}

.sb {
	width:86px;
	text-align:center;
	line-height: 33px;
	height:33px;
	border:none;
	background-image:url(images/reg_button.png);
}

.sb_h {
	width:86px;
	text-align:center;
	line-height: 33px;
	height:33px;
	border:none;
	background-image:url(images/reg_button-2.png);
}

</style>
<script>

/** register menu **/
$(document).ready(function() {
	$(".regmenu li").click(function(){
			var index = $(this).index();
		   $(this).addClass("current").siblings().removeClass("current");
	       $(".content li").eq(index).show().siblings().hide();
	});
});
  
/*
 *本插件原作者Vanadium,原文请移步前往http://vanadiumjs.com/查看
 *本插件由Mr.Think中文整理,Mr.Think的博客:http://MrThink.net/
 *转载及使用请务必注明原作者.
*/
$(function(){
	//必填项加红*,Mr.Think添加,原插件无
    $("input[class*=:required]").after("<span> *</span>")
});
 //弹出信息样式设置
Vanadium.config = {
    valid_class: 'rightformcss',//验证正确时表单样式
    invalid_class: 'failformcss',//验证失败时该表单样式
    message_value_class: 'msgvaluecss',//这个样式是弹出信息中调用值的样式
    advice_class: 'failmsg',//验证失败时文字信息的样式
    prefix: ':',
    separator: ';',
    reset_defer_timeout: 100
}
//验证类型及弹出信息设置
Vanadium.Type = function(className, validationFunction, error_message, message, init) {
  this.initialize(className, validationFunction, error_message, message, init);
};
Vanadium.Type.prototype = {
  initialize: function(className, validationFunction, error_message, message, init) {
    this.className = className;
    this.message = message;
    this.error_message = error_message;
    this.validationFunction = validationFunction;
    this.init = init;
  },
  test: function(value) {
    return this.validationFunction.call(this, value);
  },
  validMessage: function() {
    return this.message;
  },
  invalidMessage: function() {
    return this.error_message;
  },
  toString: function() {
    return "className:" + this.className + " message:" + this.message + " error_message:" + this.error_message
  },
  init: function(parameter) {
    if (this.init) {
      this.init(parameter);
    }
  }
};
Vanadium.setupValidatorTypes = function() {
Vanadium.addValidatorType('empty', function(v) {
    return  ((v == null) || (v.length == 0));
  });
//***************************************以下为验证方法,使用时可仅保留用到的判断
Vanadium.addValidatorTypes([
	//匹配大小写的等值
    ['equal', function(v, p) {
      return v == p;
    }, function (_v, p) {
      return '输入的值必须与<span class="' + Vanadium.config.message_value_class + '">' + p + '相符\(区分大小写\)</span>.'
    }],
    //不匹配大小写的等值
    ['equal_ignore_case', function(v, p) {
      return v.toLowerCase() == p.toLowerCase();
    }, function (_v, p) {
      return '输入的值必须与<span class="' + Vanadium.config.message_value_class + '">' + p + '相符\(不区分大小写\)</span>.'
    }],
    //是否为空
    ['required', function(v) {
      return !Vanadium.validators_types['empty'].test(v);
    }, '此项不可为空!'],
    //强制选中 
    ['accept', function(v, _p, e) {
      return e.element.checked;
    }, '必须接受!'],
    //
    ['integer', function(v) {
      if (Vanadium.validators_types['empty'].test(v)) return true;
      var f = parseFloat(v);
      return (!isNaN(f) && f.toString() == v && Math.round(f) == f);
    }, '请输入一个正确的整数值.'],
    //数字
    ['number', function(v) {
      return Vanadium.validators_types['empty'].test(v) || (!isNaN(v) && !/^\s+$/.test(v));
    }, '请输入一个正确的数字.'],
    //
    ['digits', function(v) {
      return Vanadium.validators_types['empty'].test(v) || !/[^\d]/.test(v);
    }, '请输入一个非负整数,含0.'],
    //只能输入英文字母
    ['alpha', function (v) {
      return Vanadium.validators_types['empty'].test(v) || /^[a-zA-Z\u00C0-\u00FF\u0100-\u017E\u0391-\u03D6]+$/.test(v)   //% C0 - FF (? - ?); 100 - 17E (? - ?); 391 - 3D6 (? - ?)
    }, '请输入英文字母.'],
    //仅限ASCII编码模式下输入英文字母
    ['asciialpha', function (v) {
      return Vanadium.validators_types['empty'].test(v) || /^[a-zA-Z]+$/.test(v)   //% C0 - FF (? - ?); 100 - 17E (? - ?); 391 - 3D6 (? - ?)
    }, '请在ASCII下输入英文字母.'],
	//英文字母或正数
    ['alphanum', function(v) {
      return Vanadium.validators_types['empty'].test(v) || !/\W/.test(v)
    }, '请输入英文字母或正数.'],
	//邮箱验证
    ['email', function (v) {
      return (Vanadium.validators_types['empty'].test(v) || /\w{1,}[@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/.test(v))
    }, '邮箱格式不正确,请检查.正确格式例如mrthink@gmail.com'],
    //网址
    ['url', function (v) {
      return Vanadium.validators_types['empty'].test(v) || /^(http|https|ftp):\/\/(([A-Z0-9][A-Z0-9_-]*)(\.[A-Z0-9][A-Z0-9_-]*)+)(:(\d+))?\/?/i.test(v)
    }, '请输入正确的网址,比如:http://www.mrthink.net'],
    //日期格式
    ['date_au', function(v) {
      if (Vanadium.validators_types['empty'].test(v)) return true;
      var regex = /^(\d{2})\/(\d{2})\/(\d{4})$/;
      if (!regex.test(v)) return false;
      var d = new Date(v.replace(regex, '$2/$1/$3'));
      return ( parseInt(RegExp.$2, 10) == (1 + d.getMonth()) ) && (parseInt(RegExp.$1, 10) == d.getDate()) && (parseInt(RegExp.$3, 10) == d.getFullYear() );
    }, '请输入正确的日期格式,比如:28/05/2010.'],
    //输入固定长度字符串
    ['length',
      function (v, p) {
        if (p === undefined) {
          return true
        } else {
          return v.length == parseInt(p)
        }
        ;
      },
      function (_v, p) {
        return '输入字符长度等于<span class="' + Vanadium.config.message_value_class + '">' + p + '</span>个.'
      }
    ],
    //
    ['min_length',
      function (v, p) {
        if (p === undefined) {
          return true
        } else {
          return v.length >= parseInt(p)
        }
        ;
      },
      function (_v, p) {
        return '输入字符长度不低于<span class="' + Vanadium.config.message_value_class + '">' + p + '</span>个.'
      }
    ],
    ['max_length',
      function (v, p) {
        if (p === undefined) {
          return true
        } else {
          return v.length <= parseInt(p)
        }
        ;
      },
      function (_v, p) {
        return '输入字符长度不大于<span class="' + Vanadium.config.message_value_class + '">' + p + '</span>个.'
      }
    ],
	//判断密码是相同
    ['same_as',
      function (v, p) {
        if (p === undefined) {
          return true
        } else {
          var exemplar = document.getElementById(p);
          if (exemplar)
            return v == exemplar.value;
          else
            return false;
        }
        ;
      },
      function (_v, p) {
        var exemplar = document.getElementById(p);
        if (exemplar)
          return '两次密码输入不相同.';
        else
          return '没有可参考值!'
      },
      "",
      function(validation_instance) {
        var exemplar = document.getElementById(validation_instance.param);
        if (exemplar){
          jQuery(exemplar).bind('validate', function(){
            jQuery(validation_instance.element).trigger('validate');
          });
        }
      }
    ],
	//ajax判断是否存在值
    ['ajax',
      function (v, p, validation_instance, decoration_context, decoration_callback) {
        if (Vanadium.validators_types['empty'].test(v)) return true;
        if (decoration_context && decoration_callback) {
          jQuery.getJSON(p, {value: v, id: validation_instance.element.id, action:"RegisterAction", type:0}, function(data) {
            decoration_callback.apply(decoration_context, [[data], true]);
          });
        }
        return true;
      }]
    ,
	//正则匹配,此用法不甚理解
    ['format',
      function(v, p) {
        var params = p.match(/^\/(((\\\/)|[^\/])*)\/(((\\\/)|[^\/])*)$/);        
        if (params.length == 7) {
          var pattern = params[1];
          var attributes = params[4];
          try
          {
            var exp = new RegExp(pattern, attributes);
            return exp.test(v);
          }
          catch(err)
          {
            return false
          }
        } else {
          return false
        }
      },
      function (_v, p) {
        var params = p.split('/');
        if (params.length == 3 && params[0] == "") {
          return '输入的值必须与 <span class="' + Vanadium.config.message_value_class + '">' + p.toString() + '</span> 相匹配.';
        } else {
          return '提供的值与<span class="' + Vanadium.config.message_value_class + '">' + p.toString() + '</span>不匹配.';
        }
      }
    ]
  ])
  if (typeof(VanadiumCustomValidationTypes) !== "undefined" && VanadiumCustomValidationTypes) Vanadium.addValidatorTypes(VanadiumCustomValidationTypes);
};

function checkUserExisted() {
	var lv = $("#login").get(0).value;
	$("#errTip")[0].innerHTML ="";
	var params = "action=RegisterAction&ajax=true"
		 			+"&login="+lv
		 			+"&type=0"
		 			+"&ts="+ new Date();
		 	$.ajax({
		 		type:"post",
		 		url:"r.do",
		 		beforeSend:function(){
		 		},
		 		dataType:"json",
		 		async:true,
		 		data:params,
		 		success:function(data) {
		 			if (data.errorCode == 0) {
		 				$("#login")[0].className = "irightformcss";	
		 			} else {
		 				$("#login")[0].className = "failformcss";	
						$("#errTip")[0].innerHTML ='<span class="failmsg failformcss">' + data.errorMsg + '</span>';		
		 			}
		 		}
		 	});
	}
	
	function refreshAuth(basePath) {
			$('#authImg')[0].src=basePath+"/auth?ts=" + new Date();
	}
	
  function getMobileAuthCode(basePath) {
  	 
	}
	
	
	function checkAuth() {
		var v = $("#authCode").get(0).value;
		$("#authETip")[0].innerHTML ="";
		var params = "action=RegisterAction&ajax=true"
		 			+"&authCode="+v
		 			+"&type=1"
		 			+"&ts="+ new Date();
	 	$.ajax({
	 		type:"post",
	 		url:"r.do",
	 		beforeSend:function(){
	 		},
	 		dataType:"json",
	 		async:true,
	 		data:params,
	 		success:function(data) {
	 			if (data.errorCode == 0) {
	 				$("#authCode")[0].className = "irightformcss";	
	 			} else {
	 				$("#authCode")[0].className = "failformcss";	
					$("#authETip")[0].innerHTML ='<span class="failmsg failformcss">' + data.errorMsg + '</span>';		
	 			}
	 		}
	 	});
	}
	
	function getCascadingAreas(area, type) {
		var v = area.value;
		if (v) {
			$.getJSON(
				"reg.do?action=RegisterAction&type=5&parent=" + v,
				function(json){
					if (type == 0) {
						$("#city").html("");
						var len = json.length;
						for (var i = 0; i<len; i++) {
							var op = "<option value='" + json[i].id + "'>" + json[i].name + "</option>";
							$("#city").append(op);
						}
					} else {
						$("#mcity").html("");
						var len = json.length;
						for (var i = 0; i<len; i++) {
							var op = "<option value='" + json[i].id + "'>" + json[i].name + "</option>";
							$("#mcity").append(op);
						}
					}
				}
			);
		}	
	}
	function checkPAuth() {
		var v = $("#mauthCode").val();
		$("mauthETip").html("");
		var params = "action=RegisterAction"
		 			+"&mauthCode="+v
		 			+"&type=7"
		 			+"&ts="+ new Date();
		var url = "reg.do?"+params;
		$.getJSON(url, function(json){
			if (json.errorCode != 0) {
				$("#mauthETip").html(json.errorMsg);
			}
		});
	}
	
	function sendMAuthCode() {
		$("mauthETip").html("");
		var phoneNum = $("mlogin").val();
		var params = "action=RegisterAction"
		 			+"&type=8"
		 			+"&phoneNum="+phoneNum
		 			+"&ts="+ new Date();
		var url = "reg.do?"+params;
		$.getJSON(url, function(json){
			if (json.errorCode != 0) {
				$("#mauthETip").html(json.errorMsg);
			} 
		});
	}
	
	function checkPhoneNum() {
		var lv = $("#mlogin").val();
		$("#merrTip").html("");
    	if(!(/^1[3|5|8][0-9]\d{4,8}$/.test(lv))){ 
    	 	$("#mlogin")[0].className="failformcss";	
	        $("#merrTip").html("不是正确的手机号"); 
	        return; 
   		} else {
   			$("#mlogin")[0].className = "irightformcss";	
   		}
		var params = "action=RegisterAction"
		 			+"&mlogin="+lv
		 			+"&type=6"
		 			+"&ts="+ new Date();
		var url = "reg.do?" + params;
		$.getJSON(url, function(json){
			if (json.errorCode != 0) {
				$("#merrTip").html(json.errorMsg);
				$("#mlogin")[0].className="failformcss";
			}
		});
	}
</script>
</head>

<body>
<jsp:include page="topline.jsp" flush="true" />
<div id="main">   
		<jsp:include page="menu.jsp" flush="true" />
    <div class="rege">
    <ul class="step">
    <li>填写用户信息</li>
    <li>验证账户信息</li>
    <li>注册成功</li>
    </ul>
		<div class="container">
            <div class="regmenu">
                  <ul>
                      <li class="current"><span>注册用户</span></li>
                      <li><span>手机注册</span></li>
                  </ul>
            </div>
            
            <div class="content">
            <ul>
              <li>
            	<form method="post" action="r.do" id="theForm">
            	 <table border="0">
              			<tr>
              			<td class="reglabel" align="right"> 用户名：
                    </td>
                    <td align="left">
                    <input type="hidden" value="RegisterAction" name="action" />
                    <input type="hidden" value="2" name="type" />
                    <input type="hidden" value="0" name="createMode" />
                    <input type="hidden" value="register2.jsp" name="page" />
                    <input name="login" type="text" id="login" class=":required" onblur="checkUserExisted();"/><span id="errTip"></span>
                  	</td>
                    </tr>
                    <tr>
              			<td class="reglabel" align="right"> 密 码：
                    </td>
                    <td align="left">
                    <input name="pwd" id="pwd" class=":min_length;6 :required" type="password" />
                    </td>
                    </tr>
                   	<tr>
              			<td class="reglabel" align="right">
                    确认密码：
										</td>
              			<td align="left">
                    <input name="rpwd" type="password" class=":same_as;pwd"  />
                    </td>
                    </tr>
                    <tr>
              			<td class="reglabel" align="right">
                    验证码：
									  </td>
                    <td align="left">
                    <input name="" type="text" class="reginput"  id="authCode"  onblur="checkAuth();"/>
                    	<img src="<%=basePath%>/auth" width="61" height="21" id="authImg"/>
                    	<a href="javascript:void(0);" onclick="refreshAuth('<%=basePath%>');">看不清？换一张</a>
                    	<span id="authETip"></span>
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    电子邮件：
                    </td>
                    <td align="left">
                   <input name="email" type="text" class=":email :required"  />
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    真实姓名：
	                  </td>
									  <td align="left">
                    <input name="realName" type="text"  class="reginput" />
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    性别：
                    </td>
										<td align="left">
                    
                      <select name="sex">
                        <option value="男">男</option>
                        <option value="女">女</option>
                      </select>
                  
                 	</td>
                </tr>
                   <tr>
                    <td class="reglabel" align="right">	
                    省：
                  </td>
                  <td align="left">
                      <select name="province" onchange="getCascadingAreas(this, 0);">
                       <option value="">--请选择省份</option>
                      	<% 
                      		int size = areas.size();
                      		for (int i = 0; i < size; i++) {
                      			Area a = areas.get(i);
                      	%>
                      	 	<option value="<%=a.getId()%>"><%=a.getName()%></option>
                      	<%	
                      		}
                      	%>
                       
                      </select>
                  </td>
                  </tr>
									<tr>
										<td class="reglabel" align="right">
                 地区：
                  </td>
                  <td align="left">
                      <select name="area" id="city">
                        <option value="">--请选择地区</option>
                      </select>
                   </td>
					</tr>
                  	<tr>
                  		<td class="reglabel" align="right">
                    许可协议确认：
                  </td>
                  <td align="left">
                      <input type="checkbox" name="accept" class=":accept" style="width:30px;"/>
                      <a href="javascript:void(0);" onclick="popDiv('acceptDiv');"><label style="text-decoration:underline;line-height:27px;height:37px;">查看许可协议</label></a>
                  </td>
                </tr>
                  <tr>
                  	<td>
                  	</td>
                  	<td align="left">	
                  	<input type="submit" class="sb" value="" onmouseover="this.className='sb_h';" onmouseout="this.className='sb';"/>
               		</td>
               	</tr>
				</table>	
			</form>
			</li>
     		 <li style="display: none;">
  					<form method="post" action="r.do" id="mobileForm">
            	 <table border="0">
              			<tr>
              			<td class="reglabel" align="right"> 手机号码：
                    </td>
                    <td align="left">
                    <input type="hidden" value="RegisterAction" name="action" />
                    <input type="hidden" value="2" name="type" />
                    <input type="hidden" value="1" name="createMode" />
                    <input type="hidden" value="register2.jsp" name="page" />
                    <input name="login" type="text" id="mlogin" onblur="checkPhoneNum();"/><span id="merrTip" class="failmsg"></span>
                  	</td>
                    </tr>
                    <tr>
              			<td class="reglabel" align="right"> 密 码：
                    </td>
                    <td align="left">
                    <input name="pwd" id="mpwd" class=":min_length;6 :required" type="password" />
                    </td>
                    </tr>
                   	<tr>
              			<td class="reglabel" align="right">
                    确认密码：
										</td>
              			<td align="left">
                    <input name="rpwd" type="password" class=":same_as;mpwd"  />
                    </td>
                    </tr>
                    <tr>
              			<td class="reglabel" align="right">
                    手机验证码：
									  </td>
                    <td align="left">
                    <input name="" type="text" class="reginput"  id="mauthCode"  onblur="checkPAuth();"/>
                    	<a href="javascript:void(0);" onclick="sendMAuthCode();">获取手机验证码</a>
                    	<span id="mauthETip"></span>
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    电子邮件：
                    </td>
                    <td align="left">
                   <input name="email" type="text" class=":email :required"  />
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    真实姓名：
	                  </td>
									  <td align="left">
                    <input name="realName" type="text"  class="reginput" />
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    性别：
                    </td>
										<td align="left">
                    
                      <select name="sex">
                        <option value="男">男</option>
                        <option value="女">女</option>
                      </select>
                  
                 	</td>
                </tr>
                   <tr>
                    <td class="reglabel" align="right">	
                    省：
                  </td>
                  <td align="left">
                      <select name="province" onchange="getCascadingAreas(this, 1);">
                       <option value="">--请选择省份</option>
                      	<% 
                      		int isize = areas.size();
                      		for (int i = 0; i < isize; i++) {
                      			Area a = areas.get(i);
                      	%>
                      	 	<option value="<%=a.getId()%>"><%=a.getName()%></option>
                      	<%	
                      		}
                      	%>
                       
                      </select>
                  </td>
                  </tr>
									<tr>
										<td class="reglabel" align="right">
                 地区：
                  </td>
                  <td align="left">
                      <select name="area" id="mcity">
                        <option value="">--请选择地区</option>
                      </select>
                   </td>
					</tr>
                  	<tr>
                  		<td class="reglabel" align="right">
                    许可协议确认：
                  </td>
                  <td align="left">
                      <input type="checkbox" name="accept" class=":accept" style="width:30px;"/>
                      <a href="javascript:void(0);" onclick="popDiv('acceptDiv');"><label style="text-decoration:underline;line-height:27px;height:37px;">查看许可协议</label></a>
                  </td>
                </tr>
                  <tr>
                  	<td>
                  	</td>
                  	<td align="left">	
                  	<input type="submit" class="sb" value="" onmouseover="this.className='sb_h';" onmouseout="this.className='sb';"/>
               		</td>
               	</tr>
				</table>	
			</form>
			</li>
		 </ul>
            </div>
            
     </div>
    </div>  
</div>
<jsp:include page="footer.jsp" flush="true" />
<div class="popAccept" id="acceptDiv">
<div class="poptitle">许可协议细则
<img src="images/close_button.png" style="float:right" onclick="hideDiv('acceptDiv');" />
</div>
<textarea class='popArea'>
《国际长途网用户使用协议》
1、重要须知

国际长途网网络电话是由北京亚库通讯技术有限公司（以下简称“服务方”）推出并运营的网络语音通信服务产品。

以下所述条款和条件即构成您与服务方就国际长途网网络电话软件的下载、安装、复制、注册、使用、管理国际长途网网络电话帐号所订立的协议（以下简称《协议》）。“用户”或“您”是指通过服务方提供的获取软件授权和帐号注册的途径获得软件产品及帐号授权许可的个人或单一实体。

用户应认真阅读、充分理解本《协议》中各条款，包括免除或者限制服务方责任的免责条款及对用户的权利限制。请您审阅并接受或不接受本《协议》（未成年人应在法定监护人陪同下审阅）。除非您接受本《协议》条款，否则您无权下载、安装或使用本软件及其相关服务。一旦您下载安装使用了国际长途网网络电话软件，即表示您已接受了本《协议》所述的条款和条件。

本《协议》可由服务方随时更新，且毋须另行通知。本《协议》条款一旦发生变更, 服务方只需在本软件或网页上公布更新内容。更新后的协议内容一旦公布即有效代替原来的协议条款。您可随时登录本软件或网站查阅最新版协议条款。在服务方修改协议条款后，您如果继续使用国际长途网则被视作您已接受了修改后的条款。
2、定义

除非本《协议》另有规定，否则下列词汇的含义为：

2.1　国际长途网网络电话：是指由服务方推出并运营的互联网服务性产品。详见国际长途网网络电话网站（http://www.guojichangtu.net）上关于国际长途网的介绍及说明。服务方有权更改产品名称和功能。

2.2　国际长途网网络电话帐号：包括国际长途网网络电话的帐号名以及您设置的密码。 您：指您，即国际长途网网络电话软件的最终用户，有时亦可使用“您的”。

2.3　UI：指国际长途网网络电话软件的用户界面。

2.4　生效日期：指达成本协议的日期，即您按上文所述单击“我已经阅读并同意”按钮的日期，或您安装或使用国际长途网网络电话软件的日期。

2.5　紧急呼叫服务：指根据适用的地方或全国规定，让用户能够接通紧急救护人员或公共安全报警接收点的服务。

2.6　国际长途网网络电话软件：指国际长途网发行的网络语音通信软件，包括但不局限于国际长途网 API、UI和文档，及其任何未来版本、改进、开发、程序补丁、更新和升级。
3、用户使用须知

3.1　用户应保证其注册登记时提供的资料均真实无误。

3.2　国际长途网网络电话帐号

    3.2.1　用户可以通过注册国际长途网网络电话帐号，使用服务方提供的服务。用户通过国际长途网网络电话帐号使用服务方提供的服务时，须同时遵守相关服务的服务条款。
    3.2.2　国际长途网网络电话帐号的所有权归服务方，用户完成注册申请手续后，获得相应国际长途网网络电话帐号的使用权。
    3.2.3　国际长途网网络电话帐号使用权仅属于初始申请注册人，禁止转让、继受或售卖。如果服务方发现使用者并非帐号初始注册人，服务方有权回收该帐号而无需向该帐号使用人承担法律责任。服务方禁止用户私下有偿或无偿转让帐号，以免因帐号问题产生纠纷，用户应当自行承担因违反此条款而遭致的任何损失。
    3.2.4　用户承担国际长途网网络电话帐号与密码的保管责任，并就其帐号及密码项下之一切活动负全部责任。用户须重视国际长途网网络电话帐号及密码保护。
    3.2.5　您需凭您的帐号、密码登录国际长途网网络电话。服务方仅根据您的帐号和密码确认使用国际长途网网络电话的用户身份。您应妥善保管您的帐号和密码，并对其使用及其遗失自行承担责任。如果您的帐号和密码遭到未获授权的使用，或者发生其他任何安全问题时，将立即通知服务方。您在此同意并确认，服务方对因上述情形产生的遗失或损害不负责任。
    3.2.6　用户注册国际长途网网络电话帐号后如果超过90天没有使用且帐户余额为“0”或者不足以进行最后一次最低计费，服务方有权回收帐号，以免造成资源浪费。

3.3　服务方保留在任何时候自行决定对国际长途网网络电话及其相关功能变更、升级、修改、转移的权利。服务方进一步保留在国际长途网网络电话中开发新功能的权利。上述所有新的功能、软件服务的提供，除非服务方另有说明，否则仍适用本《协议》。
</textarea>
</div>
</body>
</html>
