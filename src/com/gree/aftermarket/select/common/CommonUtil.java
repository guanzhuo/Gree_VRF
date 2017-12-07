package com.gree.aftermarket.select.common;

public class CommonUtil {
    public static String userid;
    public static boolean debug = true;
    
    public static void log(String msg){
    	if(debug){
    		System.out.println(msg);
    	}
    }
}
