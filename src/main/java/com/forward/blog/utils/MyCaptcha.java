package com.forward.blog.utils;

import java.util.Random;

public class MyCaptcha {
	
	private static int CAPTCHALENGTH = 5;
	
	public static String createCaptcha(){
		int Max = (int) Math.pow(10, CAPTCHALENGTH);
		int Min = (int) Math.pow(10, CAPTCHALENGTH-1);
		return ""+(new Random().nextInt(Max-Min)+Min);
	}
	
}
