<%@ page language="java" pageEncoding="UTF-8" import="com.iact.vo.User,
													  com.iact.vo.Area,
													  java.util.List" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user = (User)session.getAttribute("tempUser");

List<Area> areas = (List<Area>)request.getAttribute("areas");
List<Area> subAreas = (List<Area>)request.getAttribute("subAreas");
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
	line-height: 28px;
	height:33px;
	border:none;
	background-image:url(images/reg_button-2.png);
}
</style>
<script>
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
                       
            <div class="content">
                	<form method="post" action="r.do" id="theForm">
                	  <input type="hidden" value="RegisterAction" name="action" />
                   	  <input type="hidden" value="3" name="type" />
                      <input type="hidden" value="register3.jsp" name="page" />
            	 	  <table border="0">
              			<tr>
              			<td class="reglabel" align="right"> 用户名：
                    </td>
                    <td align="left">
                    <%=user.getLogin() %>
                  	</td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    电子邮件：
                    </td>
                    <td align="left">
                   <input name="email" type="text" class=":email :required" value="<%=user.getEmail() %>" />
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    真实姓名：
	                  </td>
									  <td align="left">
                    <input name="realName" type="text"  class="reginput" value="<%=user.getRealName() %>" />
                    </td>
                    </tr>
                    <tr>
                    <td class="reglabel" align="right">
                    性别：
                    </td>
					<td align="left">
                      <select name="sex" >
                      	<%
                      		String sex = user.getSex();
                      		String selectedM = "";
                      		String selectedF = "";
                      		if (sex.equalsIgnoreCase("男")) {
                      			selectedM = "selected";
                      		} else {
                      			selectedF = "selected";
                      		}
                      	%>
                        <option value="男"  <%=selectedM %> >男</option>
                        <option value="女"  <%=selectedF %> >女</option>
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
                      		int isize = areas.size();
                      		for (int i = 0; i < isize; i++) {
                      			Area a = areas.get(i);
                      			if (user.getProvince().longValue() == a.getId().longValue()) {
                      				System.out.println(a.getName());
                      			}
                      	%>
                      	 	<option value="<%=a.getId()%>" <%if(user.getProvince().longValue() == a.getId().longValue()){ %> selected <%}%> ><%=a.getName()%></option>
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
                         <% 
                      		int jsize = subAreas.size();
                      		for (int i = 0; i < jsize; i++) {
                      			Area a = subAreas.get(i);
                      	 %>
                      	 	<option value="<%=a.getId()%>" <%if(user.getArea().longValue() == a.getId().longValue()){%> selected <%}%> ><%=a.getName()%></option>
                      	 <%	
                      		}
                      	 %>
                      </select>
                   </td>
								</tr>
                  <tr>
                  	<td>
                  	</td>
                  	<td align="left">	
                  	<input type="submit" class="sb" value="" />
               		</td>
               		</tr>
							</table>	
						</form>
            </div>
      </div>
    </div>
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
