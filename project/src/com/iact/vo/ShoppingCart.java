/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: ShoppingCart.java
 * Created: 2012-7-12
 */
package com.iact.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Andy
 * 
 */
public class ShoppingCart {

	private List<Userorder> orders = new ArrayList<Userorder>();

	/**
	 * Current cart is empty or not.
	 * 
	 * @return
	 */
	public boolean isEmptyCart() {
		return orders.size() == 0;
	}

	/**
	 * Empty cart.
	 * 
	 */
	public void empty() {
		orders.clear();
	}

	/**
	 * Add one order item to cart.
	 * 
	 */
	public void addOrder(Userorder item) {
		orders.add(item);
	}

	/**
	 * Remove specific item
	 * 
	 * @param itemId
	 */
	public void removeOrder(long itemId) {
		for (Userorder item : orders) {
			if (item.getId() == itemId) {
				orders.remove(item);
			}
		}
	}

	/**
	 * Cart size.
	 * 
	 * @return
	 */
	public int size() {
		return orders.size();
	}

	/**
	 * Return the total price of current cart.
	 * 
	 * @return
	 */
	public float getTotalPrice() {
		return 0;
	}
	
	
}
