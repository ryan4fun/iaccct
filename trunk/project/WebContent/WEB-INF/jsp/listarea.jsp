<%@ page language="java" import="com.iact.vo.Bizarea,
								java.util.List" pageEncoding="UTF-8"%>
								
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Bizarea> areas = (List<Bizarea>)request.getAttribute("bizareas");
String[] area_A = new String[]{"阿坝藏族羌族自治州", "阿克苏地区", "阿拉善盟", "阿勒泰地区", "阿里地区", "鞍山", "安康", "安庆", "安顺", "安阳", "澳门"};
String[] area_B = new String[]{"北京","巴彦淖尔", "巴音郭楞蒙古自治州", "巴中", "白城", "白山", "白银", "百色", "蚌埠", "包头", "保定", "保山", "宝鸡", "北海", "本溪", "毕节地区", "滨州", "博尔塔拉蒙古自治州"};
String[] area_C = new String[]{"重庆", "长春", "长沙", "成都", "沧州", "昌都地区", "昌吉回族自治州", "常德", "常州", "长治", "朝阳", "潮州", "巢湖", "郴州", "承德", "池州", "赤峰", "崇左", "滁州", "楚雄彝族自治州"};
String[] area_D = new String[]{"达州", "大理白族自治州", "大连", "大庆", "大同", "大兴安岭地区", "丹东", "德宏傣族景颇族自治州", "德阳", "德州", "迪庆藏族自治州", "定西", "东营", "东莞"};
String[] area_E = new String[]{"鄂尔多斯", "鄂州", "恩施土家族苗族自治州"};
String[] area_F = new String[]{"防城港", "佛山", "福州", "抚顺", "抚州", "阜新", "阜阳"};
String[] area_G = new String[]{"广州", "贵阳", "甘南藏族自治州", "甘孜藏族自治州", "赣州", "高雄", "固原", "广安", "广元", "桂林", "贵港", "果洛藏族自治州"};
String[] area_H = new String[]{"哈尔滨", "海口", "杭州", "合肥", "呼和浩特", "哈密地区", "海北藏族自治州", "海东地区", "海南藏族自治州", "海西蒙古族藏族自治州",
			"邯郸", "汉中", "亳州", "荷泽", "和田地区", "河池", "河源", "鹤壁", "鹤岗", "贺州", "黑河", "衡水", "衡阳", "红河哈尼族彝族自治州", "呼伦贝尔", "葫芦岛",
			"湖州", "花莲", "怀化", "淮安", "淮北", "淮南", "黄冈", "黄南藏族自治州", "黄山", "黄石", "惠州"};
String[] area_J = new String[]{"济南", "基隆", "鸡西", "吉安", "吉林", "济宁", "嘉兴", "嘉义", "嘉义县", "嘉峪关", "佳木斯", "江门", "焦作", "揭阳", "金昌", "金华",
			"锦州", "晋城", "晋中", "荆门", "荆州", "景德镇", "九江", "酒泉"};
String[] area_K = new String[]{"昆明", "开封", "克拉玛依市", "克孜勒苏柯尔克孜自治州", "喀什地区"};
String[] area_L = new String[]{"拉萨", "兰州", "莱芜", "来宾", "廊坊", "乐山", "丽江", "丽水", "连云港", "凉山彝族自治州", "聊城", "辽阳", "辽源", "林芝地区", "临沧",
			"临汾", "临夏回族自治州", "临沂", "柳州", "六安", "六盘水", "龙岩", "陇南", "泸州", "漯河", "娄底", "吕梁", "洛阳"};
String[] area_M = new String[]{"马鞍山", "茂名", "梅州", "眉山", "绵阳", "苗栗", "牡丹江"};
String[] area_N = new String[]{"南昌", "南京", "南宁", "那曲地区", "南充", "南平", "南通", "南投", "南阳", "内江", "宁波", "宁德", "怒江傈僳族自治州"};
String[] area_P = new String[]{"攀枝花", "盘锦", "澎湖", "萍乡", "平顶山", "平凉", "屏东", "莆田", "濮阳"};
String[] area_Q = new String[]{"七台河", "齐齐哈尔", "黔东南苗族侗族自治州", "黔南布依族苗族自治州", "黔西南布依族苗族自治州", "钦州", "秦皇岛", "青岛", "清远", "庆阳", 
		"曲靖", "泉州", "衢州"};
String[] area_R = new String[]{"日喀则地区", "日照"};
String[] area_S = new String[]{"上海", "沈阳", "石家庄", "深圳", "三门峡", "三明", "三亚", "山南地区", "汕头", "汕尾", "商洛", "商丘", "上饶", "韶关", "邵阳", "绍兴", "十堰",
		"石嘴山", "双鸭山", "朔州", "思茅", "四平", "松原", "苏州", "宿迁", "宿州", "随州", "绥化", "遂宁"};
String[] area_T = new String[]{"天津", "太原", "塔城地区", "台北", "台东", "台南", "台中", "台州", "泰安", "泰州", "唐山", "桃园", "天水", "铁岭", "通化", "通辽", "铜川", "铜陵", 
		"铜仁地区", "吐鲁番地区"};
String[] area_W = new String[]{"乌鲁木齐", "武汉", "威海", "潍坊", "渭南", "温州", "文山壮族苗族自治州", "乌海", "乌兰察布", "无锡", "芜湖", "梧州", "吴忠", "武威"};
String[] area_X = new String[]{"西安", "西宁", "香港", "西双版纳傣族自治州", "锡林郭勒盟", "厦门", "咸宁", "咸阳", "襄樊", "湘潭", "湘西土家族苗族自治州", "孝感", "新乡", "新余", 
		"新竹", "忻州", "信阳", "兴安盟", "邢台", "徐州", "许昌", "宣城"};
String[] area_Y = new String[]{"银川", "雅安", "烟台", "盐城", "延安", "延边朝鲜族自治州", "扬州", "阳江", "阳泉", "伊春", "伊犁哈萨克自治州", "宜宾", "宜昌", "宜春", "宜兰", 
		"益阳", "鹰潭", "营口", "永州", "榆林", "玉林", "玉树藏族自治州", "玉溪", "岳阳", "云浮", "云林", "运城"};
String[] area_Z = new String[]{"郑州", "枣庄", "湛江", "彰化", "漳州", "张家界", "张家口", "张掖", "昭通", "肇庆", "镇江", "中山", "中卫", "舟山", "周口", "珠海", "株洲", 
		"驻马店", "资阳", "淄博", "自贡", "遵义"};

%>
<%! 
	long getBizareaID(String name, List<Bizarea> bizareas){
	   	for (int i = 0; i < bizareas.size(); i++){
	   		Bizarea a = bizareas.get(i);   				
	   		if (a.getName().equalsIgnoreCase(name)||a.getName().startsWith(name)){
				return a.getId();
			}
   		}	
		return -1;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I-ACT爱插播</title>
<link rel="stylesheet" type="text/css" href="css/default.css" />
<script type="text/javascript" src="js/iact.js"></script>
<!--[if lte IE 7]>
<style type="text/css">
ul li{
	display:inline;
	/*float:left;*/
}
</style>
<![endif]-->
</head>

<body>&nbsp;  
<jsp:include page="topline.jsp" flush="true" />
<jsp:include page="loginpanel.jsp" flush="true" />

<div id="main"> 
<div><img src="images/title_img-6.png" width="1000" height="120" /></div>  
	<jsp:include page="menu.jsp" flush="true" />
    <div class="hotcity">
    <ul>
    <li>热门城市：</li>
    <li><a href="#">上海</a></li>
    <li><a href="#">北京</a></li>
    <li><a href="#">广州</a></li>
    <li><a href="#">深圳</a></li>
    <li><a href="#">武汉</a></li>
    <li><a href="#">天津</a></li>
    <li><a href="#">西安</a></li>
    <li><a href="#">南京</a></li>
    <li><a href="#">杭州</a></li>
    <li><a href="#">成都</a></li>
    <li><a href="#">重庆</a></li>
    </ul>
    </div>
   <div class="citylist">
   <ul>
   <li class="abcz">A</li>
   <%
   		for (int i =0; i < area_A.length; i++){
   			String l = area_A[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
    %>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">B</li>
      <%
   		for (int i =0; i < area_B.length; i++){
   			String l = area_B[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">C</li>
         <%
   		for (int i =0; i < area_C.length; i++){
   			String l = area_C[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">D</li>
         <%
   		for (int i =0; i < area_D.length; i++){
   			String l = area_D[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">E</li>
         <%
   		for (int i =0; i < area_E.length; i++){
   			String l = area_E[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">F</li>
         <%
   		for (int i =0; i < area_F.length; i++){
   			String l = area_F[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">G</li>
         <%
   		for (int i =0; i < area_G.length; i++){
   			String l = area_G[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist" style="height:72px;">
   <ul>
   <li class="abcz" style="height:45px;">H</li>
         <%
   		for (int i =0; i < area_H.length; i++){
   			String l = area_H[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <!--div class="citylist">
   <ul>
   <li class="abcz">I</li>
   </ul>
   </div-->
   <div class="citylist">
   <ul>
   <li class="abcz">J</li>
         <%
   		for (int i =0; i < area_J.length; i++){
   			String l = area_J[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">K</li>
         <%
   		for (int i =0; i < area_K.length; i++){
   			String l = area_K[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">L</li>
         <%
   		for (int i =0; i < area_L.length; i++){
   			String l = area_L[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">M</li>
         <%
   		for (int i =0; i < area_M.length; i++){
   			String l = area_M[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">N</li>
         <%
   		for (int i =0; i < area_N.length; i++){
   			String l = area_N[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <!--div class="citylist">
   <ul>
   <li class="abcz">O</li>
   </ul>
   </div-->
   <div class="citylist">
   <ul>
   <li class="abcz">P</li>
         <%
   		for (int i =0; i < area_P.length; i++){
   			String l = area_P[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">Q</li>
         <%
   		for (int i =0; i < area_Q.length; i++){
   			String l = area_Q[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">R</li>
         <%
   		for (int i =0; i < area_R.length; i++){
   			String l = area_R[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">S</li>
         <%
   		for (int i =0; i < area_S.length; i++){
   			String l = area_S[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">T</li>
         <%
   		for (int i =0; i < area_T.length; i++){
   			String l = area_T[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <!--div class="citylist">
   <ul>
   <li class="abcz">U</li>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">V</li>
   </ul>
   </div-->
   <div class="citylist">
   <ul>
   <li class="abcz">W</li>
         <%
   		for (int i =0; i < area_W.length; i++){
   			String l = area_W[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">X</li>
         <%
   		for (int i =0; i < area_X.length; i++){
   			String l = area_X[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">Y</li>
         <%
   		for (int i =0; i < area_Y.length; i++){
   			String l = area_Y[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
   <div class="citylist">
   <ul>
   <li class="abcz">Z</li>
         <%
   		for (int i =0; i < area_Z.length; i++){
   			String l = area_Z[i];
   			long id = getBizareaID(l, areas);
   			if (id != -1){
   				%>
   					<li><a href="list.do?action=ListPackagesAction&bizarea=<%= id%>"><%= l%></a></li>
   				<%
   			} else {
   				%>
   					<li><%= l%></li>
   				<%  
   			} 			
   		}
		%>
   </ul>
   </div>
</div>
<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
