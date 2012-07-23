<%@ page language="java" import="com.iact.action.SessionContainer,
								 com.iact.vo.User" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="leftinfo" >
        <div id="wbg">
        <ul>
        <li><img src="images/myap.png" /> </li>
        <li id="my1"><a href="user.do?action=UserInfoAction">帐户信息</a></li>
        <li id="my2"><a href="user.do?action=UserInfoAction&type=1">我的订单</a></li>
        <li id="my3"><a href="user.do?action=UserInfoAction&type=2">我的资源</a></li>
        <li id="my5"><a href="#">在线充值</a></li>
        <li id="my6"><a href="user.do?action=UserInfoAction&type=3">充值记录</a></li>
        <li id="my7"><a href="user.do?action=UserInfoAction&type=4">消费记录</a></li>
        <li id="my4"><a href="#">我的业务</a></li>
        <li id="my8"><a href="logout.do?action=LogoutAction">退出登录</a></li>
        </ul>
        </div>
 </div>