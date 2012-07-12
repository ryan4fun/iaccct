/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: IActException.java
 * Created: 2012-7-2
 */
package com.iact;

/**
 * Base exception of IAct web application.
 * 
 * @author Andy
 *
 */
public class IActException extends Exception {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public IActException(Throwable t) {
		super(t);
	}
	
	public IActException(String msg){
		super(msg);
	}
	
}
