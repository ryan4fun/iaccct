/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: AlipaytoAction.java
 * Created: 2012-7-30
 */
package com.iact.action;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.DAOFactory;
import com.iact.dao.PayonlinelogDAO;
import com.iact.plugin.alipay.util.AlipayNotify;
import com.iact.util.Tools;
import com.iact.vo.Payonlinelog;
import com.iact.vo.User;

public class AlipaytoAction extends AbstractAction {

	private static final String PAY_ONLINE_DAO = "PayonlinelogDAO";

	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String strType = (String) reqParams.get("type");

		if (strType == null || strType.equalsIgnoreCase("payonline")) {
			return payonline(req, res);
		} else if (strType.equalsIgnoreCase("callBack")) {
			return callBack(req, res);

		}

		return ErrorCode.OK;
	}

	private int payonline(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		String payMode = (String) reqParams.get("pay_mode");

		String paymethod = "bankPay";
		String defaultbank = "";
		if (payMode.equalsIgnoreCase("zfb_none")) {
			paymethod = "directPay";
		} else {
			int index = payMode.indexOf("_");
			defaultbank = payMode.substring(index + 1);
		}

		String total_fee = (String) reqParams.get("amount");
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

	private int callBack(HttpServletRequest req, HttpServletResponse res)
			throws IActException {

		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = req.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			params.put(name, valueStr);
		}

		String trade_no = req.getParameter("trade_no");
		String order_no = req.getParameter("out_trade_no");
		String total_fee = req.getParameter("total_fee");
		String trade_status = req.getParameter("trade_status");
		boolean verify_result = AlipayNotify.verify(params);

		if (verify_result) {
			PayonlinelogDAO DAO = (PayonlinelogDAO) DAOFactory
					.getDAO(PAY_ONLINE_DAO);
			Payonlinelog log = new Payonlinelog();
			log.setAddTime(new Timestamp(System.currentTimeMillis()));
			log.setIpadress(req.getRemoteAddr());
			log.setOrderId(order_no);
			log.setPayAmount((int) Double.parseDouble(total_fee));
			log.setSerialNumber(trade_no);
			User user = getSessionContainer(req).getUser();
			log.setUser(user.getId());
			log.setProductId("iACT网站");
			if (trade_status.equals("TRADE_FINISHED")
					|| trade_status.equals("TRADE_SUCCESS")) {

				log.setPayContext("充值成功");

			} else {
				log.setPayContext("充值 失败");
			}

			try {
				DAO.beginTransaction();
				DAO.save(log);
				DAO.commitTransaction();
			} catch (Throwable t) {
				DAO.rollbackTransaction();
			} finally {
				DAO.closeSession();
			}
		}
		reqParams.put("page", "alipaysuccess.jsp");
		_forward(req, res);

		return ErrorCode.OK;
	}
}
