<%@ page language="java"  pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>

<script>
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
<jsp:include page="topline.jsp" flush="true"/>
<jsp:include page="loginpanel.jsp" flush="true"/>

<div id="main">   
  <div id="userpage">
    <jsp:include page="menu.jsp" flush="true"/>
 	<jsp:include page="userleft.jsp" flush="true" />
  	 <div class="rightinfo">
        <div id="wbg">
        <img src="images/my_title5.png" width="160" height="30" />
       <form action="pay.do" id="payform" method="post" target="_blank" style="margin:10px;">
<table style="margin-left: 24px;" width="559" border="0" cellpadding="0" cellspacing="0" id="amount" onclick="user_amount_select()">
  <tbody>
    <tr>
      <td height="41"><input checked="checked" class="input" id="amount_100" type="radio" value="100" name="amount" />
        <label for="amount_100"><img src="images/charge_100.gif" onclick="fee_select(&#39;amount_100&#39;)" /></label></td>
      <td><input class="input" id="amount_200" type="radio" value="200" name="amount">
        <label for="amount_200"><img src="images/charge_200.gif" onclick="fee_select(&#39;amount_200&#39;)"/></label></td>
      <td width="225"><input class="input" id="amount_500" type="radio" value="500" name="amount">
        <label for="amount_500"><img src="images/charge_500.gif" onclick="fee_select(&#39;amount_500&#39;)"/></label></td>

      </tr>
    <tr>
      <td height="40"><input class="input" id="amount_800" type="radio" value="800" name="amount"/>
        <label for="amount_800"><img src="images/charge_800.gif" onclick="fee_select(&#39;amount_800&#39;)"/></label></td>
      <td><input class="input" id="amount_1000" type="radio" value="1000" name="amount">
        <label for="amount_1000"><img src="images/charge_1000.gif" width="126" height="32" onclick="fee_select(&#39;amount_1000&#39;)"/><br>
        </label></td>
      <td><input class="input" id="amount_2000" type="radio" value="2000" name="amount">
        <label for="amount_2000"><img src="images/charge_2000.gif" onclick="fee_select(&#39;amount_2000&#39;)"/></label></td>
      </tr>
    <tr>
      <td width="169" height="34"><input class="input" id="amount_50" type="radio" value="50" name="amount"/>
          <label for="amount_50"><img src="images/charge_50.gif" onclick="fee_select(&#39;amount_50&#39;)"/></label></td>
      <td width="165"></td>
      </tr>
  </tbody>
</table>
<p style="padding-left: 27px;">&nbsp;</p>
<h2>请选择您要充值的渠道：</h2>
 


<table width="89%" height="781" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" id="RadioButtonList1" align="center">
  <tbody>

    <tr>
      <td width="51%" height="70" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="zfb_none" type="radio" checked="checked" value="zfb_none" name="pay_mode" />
      </div>
        <label for="zfb_none">
        <div><img onclick="bank_select(&#39;zfb_none&#39;)" src="images/zfb01.gif" alt="支付宝" align="middle" /> </div>
        </label>
        <label for="RadioButtonList1_2"></label></td>
      <td width="49%" bgcolor="#FFFFFF"><div align="left"></div></td>
    </tr>
    <tr>
      <td height="70" bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="zhsh" type="radio" value="zfb_CMB" name="pay_mode" />
        </div>        <label for="zhsh">
        <div><img src="images/zhaoshangyinhang.gif" alt="招商银行" width="180" height="40" align="middle" onclick="bank_select(&#39;zhsh&#39;)" /></div>
        </label></td>
      <td bgcolor="#FFFFFF"> 
        <div align="left">
          <input class="input" id="gsh" type="radio" value="zfb_ICBCB2C" name="pay_mode" />
        </div>
        <label for="gsh">
        <div><img src="images/gongshangyinhang.gif" alt="中国工商银行" width="180" height="40" align="middle" onclick="bank_select(&#39;gsh&#39;)" /></div>
        </label>     </td>
      </tr>
    <tr>
      <td height="77" bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="jsh" type="radio" value="zfb_CCB" name="pay_mode" />
        </div>        <label for="jsh">
        <div><img src="images/jianshenyinhang.gif" alt="中国建设银行" width="180" height="40" align="middle" onclick="bank_select(&#39;jsh&#39;)" /></div>
        </label></td>
      <td bgcolor="#FFFFFF">
          <div align="left">
            <input class="input" id="shhpd" type="radio" value="zfb_SPDBB2B" name="pay_mode" />
          </div>
          <label for="shhpd">
          <div><img src="images/pufayinhang.gif" alt="上海浦东发展银行" width="180" height="40" align="middle" onclick="bank_select(&#39;shhpd&#39;)" /></div>
          </label></td>
      </tr>
    <tr>
      <td height="75" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="ny" type="radio" value="zfb_ABC" name="pay_mode" />
      </div>
      <label for="ny">
      <div><img src="images/nongyeyinhang.gif" alt="中国农业银行" width="180" height="40" align="middle" onclick="bank_select(&#39;ny&#39;)" /></div>
      </label></td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="msh" type="radio" value="zfb_CMBC" name="pay_mode" />
      </div>
      <label for="msh">
      <div align="left"><img src="images/minshengyinhang.gif" alt="中国民生银行" width="180" height="40" align="middle" onclick="bank_select(&#39;msh&#39;)"></div>
      </label></td>
      </tr>
    <tr>
      <td height="76" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="xy" type="radio" value="zfb_CIB" name="pay_mode" / >
      </div>
      <label for="xy">
      <div align="left"><img src="images/xingyeyinhang.gif" alt="兴业银行" width="180" height="40" align="middle" onclick="bank_select(&#39;xy&#39;)"/></div>
      </label></td>
      <td bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="jt" type="radio" value="zfb_COMM" name="pay_mode">
        </div>
        <label for="jt">
        <div align="left"><img src="images/jiaotongyinhang.gif" alt="交通银行" width="180" height="40" align="middle" onclick="bank_select(&#39;jt&#39;)"></div>
        </label></td>
      </tr>
    <tr>
      <td height="72" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="shzhfz" type="radio" value="zfb_SDB" name="pay_mode">
      </div>
      <label for="shzhfz">
      <div align="left"><img src="images/shenzhenfazhanyinhang.gif" alt="深圳发展银行" width="180" height="40" align="middle" onclick="bank_select(&#39;shzhfz&#39;)"></div>
      </label></td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="bj" type="radio" value="1001015" name="pay_mode">
      </div>
      <label for="bj">
      <div align="left"><img src="images/beijingyinhang.gif" alt="北京银行" width="180" height="40" align="middle" onclick="bank_select(&#39;bj&#39;)"></div>
      </label></td>
    </tr>
    <tr>
      <td height="78" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="zhx" type="radio" value="zfb_CITIC" name="pay_mode">
      </div>
      <label for="zhx">
      <div align="left"><img src="images/zhongxinyinhang.gif" alt="中信银行" width="180" height="40" align="middle" onclick="bank_select(&#39;zhx&#39;)"></div>
      </label></td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="gd" type="radio" value="CEB-NET" name="pay_mode">
      </div>
      <label for="gd">
      <div align="left"><img src="images/guangdayinhang.gif" alt="中国光大银行" width="180" height="40" align="middle" onclick="bank_select(&#39;gd&#39;)"></div>
      </label></td>
    </tr>
    <tr>
      <td height="78" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="zhg" type="radio" value="10060001" name="pay_mode">
      </div>
        <label for="zhg">
        <div align="left"><img src="images/zgyh.gif" alt="中国银行" width="180" height="40" align="middle" onclick="bank_select(&#39;zhg&#39;)"></div>
        </label>
        <div align="left">        注：仅支持广东省内（除深圳外） </div></td>
      <td bgcolor="#FFFFFF">
        
        <div align="left">
          <input class="input" id="ggfzh" type="radio" value="zfb_GDB" name="pay_mode">
        </div>        <label for="ggfzh">
        <div align="left"><img src="images/gdfzyh.gif" alt="广东发展银行" width="180" height="40" align="middle" onclick="bank_select(&#39;ggfzh&#39;)"></div>
        </label></td>
      </tr>
    <tr>
      <td height="85" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="ggyl" type="radio" value="10060004" name="pay_mode">
      </div>
        <label for="ggyl">
        <div align="left"><img src="images/zgyl.gif" alt="广州银联" width="175" height="45" align="middle" onclick="bank_select(&#39;ggyl&#39;)">	  </div>
        </label>	  </td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="hx" type="radio" value="10060004" name="pay_mode">
      </div>
        <label for="hx">
        <div align="left"><img src="images/hxyh.gif" alt="华夏银行" width="175" height="45" align="middle" onclick="bank_select(&#39;hx&#39;)">	  </div>
        </label>	  </td>
    </tr>
    <tr>
      <td colspan="3" bgcolor="#FFFFFF"><div align="left">以下银行可以用中国银联来支付： 
        1、广州市商业银行
        2、中国邮政储蓄银行
        3、广州市农村信用合作社联合社</div></td>
      </tr>
	    <tr>
	     <td colspan="3" bgcolor="#FFFFFF" align="center">
	     <input id="pay_btn" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; WIDTH: 169px; HEIGHT: 30px; BORDER-RIGHT-WIDTH: 0px" type="image" src="images/pay.gif" name="pay_btn" alt="确认无误,付款" />
	     
	     </td>
	    </tr>
  </tbody>
</table>

</form>
      </div>
  </div> 
</div>
<jsp:include page="footer.jsp" flush="true"/>
</div>
</body>
</html>
