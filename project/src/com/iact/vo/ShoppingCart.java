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

	private List<Bizpackageitem> packItems = new ArrayList<Bizpackageitem>();

	/**
	 * Current cart is empty or not.
	 * 
	 * @return
	 */
	public boolean isEmptyCart() {
		return packItems.size() == 0;
	}

	/**
	 * Empty cart.
	 * 
	 */
	public void empty() {
		packItems.clear();
	}

	/**
	 * Add one package item to cart.
	 * 
	 */
	public void addPackageItem(Bizpackageitem item) {
		packItems.add(item);
	}

	/**
	 * Remove specific item
	 * 
	 * @param itemId
	 */
	public void removePackageItem(long itemId) {
		for (Bizpackageitem item : packItems) {
			if (item.getId() == itemId) {
				packItems.remove(item);
			}
		}
	}

	/**
	 * Cart size.
	 * 
	 * @return
	 */
	public int size() {
		return packItems.size();
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
