package com.forward.blog.model;

import com.forward.blog.utils.MyMD5Util;

public class User {
	
	private int uid;
	private String uname;
	private String upassword;
	private String uemail;
	private String ucaptcha;
	private String uhobby;
	private String ufax;
	private String utel;
	private String ulocation;
	private String uabout;
	private String uaddr;
	
	
	
	
	
	
	public String getUaddr() {
		return uaddr;
	}

	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}

	public String getUabout() {
		return uabout;
	}

	public void setUabout(String uabout) {
		this.uabout = uabout;
	}

	public String getUhobby() {
		return uhobby;
	}

	public void setUhobby(String uhobby) {
		this.uhobby = uhobby;
	}

	public String getUfax() {
		return ufax;
	}

	public void setUfax(String ufax) {
		this.ufax = ufax;
	}

	public String getUtel() {
		return utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	public String getUlocation() {
		return ulocation;
	}

	public void setUlocation(String ulocation) {
		this.ulocation = ulocation;
	}

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
				+ ", ucaptcha=" + ucaptcha + ", uhobby=" + uhobby + ", ufax=" + ufax + ", utel=" + utel + ", ulocation="
				+ ulocation + "]";
	}
	
	
	
	
}
