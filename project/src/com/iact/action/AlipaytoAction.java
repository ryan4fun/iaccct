/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: AlipaytoAction.java
 * Created: 2012-7-30
 */
package com.iact.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.util.Tools;

public class AlipaytoAction extends AbstractAction {

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		
		String payMode = (String)reqParams.get("pay_mode");
		
		String paymethod = "bankPay";
		String defaultbank = "";
		if (payMode.equalsIgnoreCase("zfb_none")) {
			paymethod = "directPay";
		} else {
			int index = payMode.indexOf("_");
			defaultbank = payMode.substring(index + 1);
		}		
		
		String total_fee = (String)reqParams.get("amount");
		String subject = "爱插播在线充值";
		String alibody = "在线充值说明详见网站使用说明";
		
		String out_trade_no = Tools.getPayonlineID();
		
		req.setAttribute("paymethod", paymethod);
		req.setAttribute("defaultbank", defaultbank);
		req.setAttribute("total_fee", total_fee);
		req.setAttribute("subject", subject);
		req.setAttribute("alibody", alibody);
		req.setAttribute("out_trade_no", out_trade_no);
		
		reqParams.put("page", "alipayto.jsp");
		
		_forward(req, res);
	
		return ErrorCode.OK;
	}
}
