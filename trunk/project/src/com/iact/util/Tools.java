/**  
 * Copyright (c) IAct Inc. 2000-2009, All rights reserved.
 * @author Andy 
 * File: Tools.java
 * Created: 2012-7-26
 */
package com.iact.util;

import java.util.Calendar;

public class Tools {

	/**
	 * User order id
	 * 
	 * Lock is for controlling multi-thread synchronization, useed is base-number, we could
	 * think it is always different within one day.
	 * 
	 * System.currentTimeMillis / 1000 is current second
	 * 
	 * System.currentTimeMillis() / 1000) % 1000000 is last six number
	 * 
	 */
	private static byte[] ULOCK = new byte[0];
	private static int useed = (int) ((System.currentTimeMillis() / 1000) % 1000000);

	/**
	 * Return a unique <code>ID</code>
	 * 
	 * @return <code>ID</code>
	 */
	public static String getOrderID() {
		String trans = null;
		synchronized (ULOCK) {
			useed = useed + 1;
			if (useed / 100000 > 0) {
				trans = Integer.toString(useed);
			} else if (useed / 10000 > 0) {
				trans = "0" + useed;
			} else if (useed / 1000 > 0) {
				trans = "00" + useed;
			} else if (useed / 100 > 0) {
				trans = "000" + useed;
			} else if (useed / 10 > 0) {
				trans = "0000" + useed;
			} else {
				trans = "00000" + useed;
			}
		}

		Calendar now = Calendar.getInstance();
		String dt = Integer.toString(now.get(Calendar.YEAR))
				+ Integer.toString(now.get(Calendar.MONTH) + 1)
				+ Integer.toString(now.get(Calendar.DATE));
		return dt + trans;
	}

	/**
	 * Transaction id
	 * 
	 */
	private static byte[] TLOCK = new byte[0];
	private static int tseed = (int) ((System.currentTimeMillis() / 1000) % 1000000);

	/**
	 * Return a unique <code>ID</code>
	 * 
	 * @return <code>ID</code>
	 */
	public static String getTransID() {
		String trans = null;
		synchronized (TLOCK) {
			tseed = tseed + 1;
			if (tseed / 100000 > 0) {
				trans = Integer.toString(tseed);
			} else if (tseed / 10000 > 0) {
				trans = "0" + tseed;
			} else if (tseed / 1000 > 0) {
				trans = "00" + tseed;
			} else if (tseed / 100 > 0) {
				trans = "000" + tseed;
			} else if (tseed / 10 > 0) {
				trans = "0000" + tseed;
			} else {
				trans = "00000" + tseed;
			}
		}
		Calendar now = Calendar.getInstance();
		String dt = Integer.toString(now.get(Calendar.YEAR))
				+ Integer.toString(now.get(Calendar.MONTH) + 1)
				+ Integer.toString(now.get(Calendar.DATE));
		return dt + trans;
	}
	
}
