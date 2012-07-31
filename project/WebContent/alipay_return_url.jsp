<%@ page language="java"
	import="java.util.Map,
			java.util.Enumeration,
			com.iact.util.Tools,
			java.util.HashMap"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
	
<%
	Map<String, String> paramMap = new HashMap<String, String>();
	Enumeration names = request.getParameterNames();
	while (names != null && names.hasMoreElements()) {
		String name = (String) names.nextElement();
		String[] values = request.getParameterValues(name);
		paramMap.put(name, values[0]);
	}
	
	paramMap.put("action", "AlipaytoAction");
	paramMap.put("type", "callBack");
	
	String html = Tools.buildSBForm(paramMap);
	
	out.println(html);
	
%>