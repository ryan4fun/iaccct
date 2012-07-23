/**  
 * @copyRight IAct Software Co.,Ltd.  

 * @author Administrator
 * File: AreaUtil.java
 * Created: 2012-7-23
 */
package com.iact.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.iact.IActException;
import com.iact.dao.AreaDAO;
import com.iact.dao.DAOFactory;
import com.iact.vo.Area;

/**
 * @author Andy
 * 
 */
public class AreaUtil {

	private static final String AREA_DAO = "AreaDAO";

	public static AreaNode getAreaTree() throws IActException {

		AreaDAO DAO = (AreaDAO) DAOFactory.getDAO(AREA_DAO);

		AreaNode root = new AreaNode(-1, "root");

		List<Area> provinces = DAO.findByLevel(1);

		int size = provinces.size();
		for (int i = 0; i < size; i++) {
			Area area = provinces.get(i);
			AreaNode node = new AreaNode(area.getId(), area.getName());
			root.addChild(node);
			addSubAreaNode(area, node);
		}
		return root;
	}

	public static void addSubAreaNode(Area area, AreaNode node) throws IActException {
		AreaDAO DAO = (AreaDAO) DAOFactory.getDAO(AREA_DAO);
		List<Area> subAreas = DAO.findByParent(area.getId());
		for (int j = 0, ssize = subAreas.size(); j < ssize; j++) {
			Area subArea = subAreas.get(j);
			AreaNode subNode = new AreaNode(subArea.getId(), subArea
					.getName());
			node.addChild(subNode);
			addSubAreaNode(subArea, subNode);
		}
	}

	public static class AreaNode {

		public AreaNode(long id, String name) {
			this.id = id;
			this.name = name;

		}
		private long id;

		private String name;

		private List<AreaNode> children;

		private Properties attrs;

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public List<AreaNode> getChildren() {
			return children;
		}

		public void setChildren(List<AreaNode> children) {
			this.children = children;
		}

		public Properties getAttrs() {
			return attrs;
		}

		public void setAttrs(Properties attrs) {
			this.attrs = attrs;
		}

		public void addChild(AreaNode area) {
			
			if (this.children == null) {
				this.children = new ArrayList<AreaNode>();
			}
			this.children.add(area);
		}

	}

}
