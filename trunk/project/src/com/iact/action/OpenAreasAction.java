package com.iact.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iact.ErrorCode;
import com.iact.IActException;
import com.iact.dao.BizareaDAO;
import com.iact.dao.DAOFactory;
import com.iact.vo.Bizarea;

public class OpenAreasAction extends AbstractAction {

	private static final String DAO_AREA= "BizareaDAO";
	@Override
	protected int _doAction(HttpServletRequest req, HttpServletResponse res)
			throws IActException {
		// TODO Auto-generated method stub
		BizareaDAO areaDAO = (BizareaDAO)DAOFactory.getDAO(DAO_AREA);
		List<Bizarea> areas = areaDAO.findAll();
		
		req.setAttribute("bizareas", areas);
		reqParams.put("page", "listarea.jsp");
		_forward(req, res);
		return ErrorCode.OK;
	}

}
