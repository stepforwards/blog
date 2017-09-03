package com.forward.blog.model;

import com.forward.blog.utils.MyMD5Util;

public class User {
	
	private int uid;
	private String uname;
	private String upassword;
	private String uemail;
	private String ucaptcha;
	
	
	
	
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUcaptcha() {
		return ucaptcha;
	}

	public void setUcaptcha(String ucaptcha) {
		this.ucaptcha = ucaptcha;
	}

	public void setMD5U_password(String u_password) {
		this.upassword = MyMD5Util.MD5Encrypt(u_password);
	}
	
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", uemail=" + uemail
				+ ", ucaptcha=" + ucaptcha + "]";
	}
	
	
	
	
}
