package com.forward.blog.utils;

import org.springframework.util.DigestUtils;

public class MyMD5Util {
	
	public static String MD5Encrypt(String str){
		return DigestUtils.md5DigestAsHex(str.getBytes());
	} 
}
