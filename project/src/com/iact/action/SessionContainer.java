/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: SessionContainer.java
 * Created: 2012-7-12
 */
package com.iact.action;

import java.util.Locale;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import com.iact.vo.ShoppingCart;
import com.iact.vo.User;

/**
 * 
 * Used to store information about a specific user. This class is used so that
 * the information is not scattered throughout the HttpSession. Only this object
 * is stored in the session for the user. This class implements the
 * HttpSessionBindingListener interface so that it can be notified of session
 * timeout and perform the proper cleanup. 
 *
 * @author Andy
 *
 */
public class SessionContainer implements HttpSessionBindingListener {

	/**
	 * Current user in this session
	 */
	private User user;
	
	/**
	 * Shopping cart of current user.
	 * 
	 */
	private ShoppingCart cart = new ShoppingCart();
	
	/**
	 * Locale 
	 */
	private Locale locale;
	
	private int loginFailCnt = 0;
	
	/**
	 * Default Constructor
	 */
	public SessionContainer()
	{
		super();
		initialize();
	}

	/**
	 * The container calls this method when it is being unbound from the
	 * session.
	 */
	public void valueUnbound(HttpSessionBindingEvent event)
	{
		// Perform resource cleanup
		System.out.println("Being unbound...");
		cleanUp();
	}

	public ShoppingCart getCart()
	{
		return cart;
	}

	public void setCart(ShoppingCart newCart)
	{
		cart = newCart;
	}

	/**
	 * Set the locale for the user.
	 */
	public void setLocale(Locale aLocale)
	{
		locale = aLocale;
	}

	/**
	 * Retrieve the locale for the user.
	 */
	public Locale getLocale()
	{
		return locale;
	}

	/**
	 * The container calls this method when it is being bound to the session.
	 */
	public void valueBound(HttpSessionBindingEvent event)
	{
		// Don't need to do anything, but still have to implement the
		// interface method.
	}

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	/**
	 * Initialize all of the required resources
	 */
	private void initialize()
	{
		// Create a new Shopping cart for this user
		cart = new ShoppingCart();
	}

	/**
	 * Clean up any open resources. The shopping cart is left intact
	 * intentionally.
	 */
	public void cleanUp()
	{
		setUser(null);
	}

	public int getLoginFailCnt() {
		return loginFailCnt;
	}
	
	public void addLoginFailCnt() {
		loginFailCnt++;
	}
	
	public void setLoginFailCnt(int loginFailCnt) {
		this.loginFailCnt = loginFailCnt;
	}

}
