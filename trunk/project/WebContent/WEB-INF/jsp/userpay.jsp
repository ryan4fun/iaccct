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
	function fee_select(sid) {
		$("#" + sid).attr("checked", "checked");
	}
	
	function bank_select(bid) {
		$("#" + bid).attr("checked", "checked");
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
        <input type="hidden" name="action" value="AlipaytoAction" />
<table style="margin-left: 24px;" width="559" border="0" cellpadding="0" cellspacing="0" id="amount">
  <tbody>
    <tr>
      <td height="41"><input checked="checked" class="input" id="amount_100" type="radio" value="100" name="amount" />
        <label for="amount_100"><img src="images/charge_100.gif" onclick="fee_select('amount_100')" /></label></td>
      <td><input class="input" id="amount_200" type="radio" value="200" name="amount">
        <label for="amount_200"><img src="images/charge_200.gif" onclick="fee_select('amount_200')"/></label></td>
      <td width="225"><input class="input" id="amount_500" type="radio" value="500" name="amount">
        <label for="amount_500"><img src="images/charge_500.gif" onclick="fee_select('amount_500')"/></label></td>

      </tr>
    <tr>
      <td height="40"><input class="input" id="amount_800" type="radio" value="800" name="amount"/>
        <label for="amount_800"><img src="images/charge_800.gif" onclick="fee_select('amount_800')"/></label></td>
      <td><input class="input" id="amount_1000" type="radio" value="1000" name="amount">
        <label for="amount_1000"><img src="images/charge_1000.gif" width="126" height="32" onclick="fee_select('amount_1000')"/><br>
        </label></td>
      <td><input class="input" id="amount_2000" type="radio" value="2000" name="amount">
        <label for="amount_2000"><img src="images/charge_2000.gif" onclick="fee_select('amount_2000')"/></label></td>
      </tr>
    <tr>
      <td width="169" height="34"><input class="input" id="amount_50" type="radio" value="50" name="amount"/>
          <label for="amount_50"><img src="images/charge_50.gif" onclick="fee_select('amount_50')"/></label></td>
      <td width="165"></td>
      </tr>
  </tbody>
</table>
<p style="padding-left: 27px;">&nbsp;</p>
<table width="89%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" id="RadioButtonList1" align="center" >
  <tbody>
    <tr>
      <td width="51%" height="70" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="zfb_none" type="radio" checked="checked" value="zfb_none" name="pay_mode" />
      </div>
        <label for="zfb_none">
        <img onclick="bank_select('zfb_none')" src="images/zfb01.gif" alt="支付宝" align="middle" />
        </label>
        <label for="RadioButtonList1_2"></label></td>
      <td width="49%" bgcolor="#FFFFFF"><div align="left"></div></td>
    </tr>
    <tr>
      <td height="70" bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="zhsh" type="radio" value="zfb_CMB" name="pay_mode" />
        </div><label for="zhsh">
        <img src="images/zhaoshangyinhang.gif" alt="招商银行" width="180" height="40" align="middle" onclick="bank_select('zhsh')" />
        </label></td>
      <td bgcolor="#FFFFFF"> 
        <div align="left">
          <input class="input" id="gsh" type="radio" value="zfb_ICBCB2C" name="pay_mode" />
        </div>
        <label for="gsh">
        <img src="images/gongshangyinhang.gif" alt="中国工商银行" width="180" height="40" align="middle" onclick="bank_select('gsh')" />
        </label>     </td>
      </tr>
    <tr>
      <td height="77" bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="jsh" type="radio" value="zfb_CCB" name="pay_mode" />
        </div>        <label for="jsh">
        <img src="images/jianshenyinhang.gif" alt="中国建设银行" width="180" height="40" align="middle" onclick="bank_select('jsh')" />
        </label></td>
      <td bgcolor="#FFFFFF">
          <div align="left">
            <input class="input" id="shhpd" type="radio" value="zfb_SPDBB2B" name="pay_mode" />
          </div>
          <label for="shhpd">
          <img src="images/pufayinhang.gif" alt="上海浦东发展银行" width="180" height="40" align="middle" onclick="bank_select('shhpd')" />
          </label></td>
      </tr>
    <tr>
      <td height="75" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="ny" type="radio" value="zfb_ABC" name="pay_mode" />
      </div>
      <label for="ny">
      <img src="images/nongyeyinhang.gif" alt="中国农业银行" width="180" height="40" align="middle" onclick="bank_select('ny')" />
      </label></td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="msh" type="radio" value="zfb_CMBC" name="pay_mode" />
      </div>
      <label for="msh">
      <img src="images/minshengyinhang.gif" alt="中国民生银行" width="180" height="40" align="middle" onclick="bank_select('msh')"/>
      </label></td>
      </tr>
    <tr>
      <td height="76" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="xy" type="radio" value="zfb_CIB" name="pay_mode" />
      </div>
      <label for="xy">
      <img src="images/xingyeyinhang.gif" alt="兴业银行" width="180" height="40" align="middle" onclick="bank_select('xy')"/>
      </label></td>
      <td bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="jt" type="radio" value="zfb_COMM" name="pay_mode" />
        </div>
        <label for="jt">
        <img src="images/jiaotongyinhang.gif" alt="交通银行" width="180" height="40" align="middle" onclick="bank_select('jt')" />
        </label></td>
      </tr>
    <tr>
      <td height="72" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="shzhfz" type="radio" value="zfb_SDB" name="pay_mode" />
      </div>
      <label for="shzhfz">
      <img src="images/shenzhenfazhanyinhang.gif" alt="深圳发展银行" width="180" height="40" align="middle" onclick="bank_select('shzhfz')" />
      </label></td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="bj" type="radio" value="1001015" name="pay_mode" />
      </div>
      <label for="bj">
      <img src="images/beijingyinhang.gif" alt="北京银行" width="180" height="40" align="middle" onclick="bank_select('bj')" />
      </label></td>
    </tr>
    <tr>
      <td height="78" bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="zhx" type="radio" value="zfb_CITIC" name="pay_mode" />
      </div>
      <label for="zhx">
      <img src="images/zhongxinyinhang.gif" alt="中信银行" width="180" height="40" align="middle" onclick="bank_select('zhx')" />
      </label></td>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="gd" type="radio" value="CEB-NET" name="pay_mode" />
      </div>
      <label for="gd">
      <img src="images/guangdayinhang.gif" alt="中国光大银行" width="180" height="40" align="middle" onclick="bank_select('gd')" />
      </label></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFFF"><div align="left">
        <input class="input" id="zhg" type="radio" value="BOCB2C" name="pay_mode" />
      </div>
        <label for="zhg">
        <img src="images/zgyh.gif" alt="中国银行" width="180" height="40" align="middle" onclick="bank_select('zhg')" />
        </label>
        </td>
        <td bgcolor="#FFFFFF">
        <div align="left">
          <input class="input" id="ggfzh" type="radio" value="zfb_GDB" name="pay_mode" />
        </div><label for="ggfzh">
        <img src="images/gdfzyh.gif" alt="广东发展银行" width="180" height="40" align="middle" onclick="bank_select('ggfzh')" />
        </label></td>
      </tr>
	    <tr>
	     <td colspan="2" bgcolor="#FFFFFF" align="center" height="50px">
	     <input id="pay_btn" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; WIDTH: 86px; HEIGHT: 33px; BORDER-RIGHT-WIDTH: 0px" type="image" src="images/bys_button.png" 
	     name="pay_btn" title="确认无误,付款" onmouseover="this.src='images/bys_button-2.png';" onmouseout="this.src='images/bys_button.png';"/>   
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
