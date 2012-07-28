/**  
 * @copyRight IAct Software Co.,Ltd.  
 * File: ErrorCode.java
 * Created: 2012-7-14
 */
package com.iact;

/**
 * @author Andy
 *
 */
public class ErrorCode {
	
	/**
	 * OK
	 */
	public static final int OK = 0;
	
	/**
	 * Auth code is wrong.
	 */
	public static final int AUTH_FAILURE = 1;
	
	/**
	 * Wrong password or user name.
	 */
	public static final int UN_UP = 2;
	
	/**
	 * User name is existed 
	 */
	public static final int EXISTED_USER = 3;
	
	
	public static final int LARGER_THAN_MAX_UPSIZE = 4;

	public static final int ILLEGAL_FILE_TYPE = 5;
	
	/**
	 * 
	 */
	public static final int FAIL_DELE_ORDER = 6;
	
	public static final int ERROR = -1;
	
	
}
