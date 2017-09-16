package com.forward.blog.model;

import java.sql.Date;

public class Album {
	
	private int aid;
	private String alname;
	private String aldesc;
	private String alurl;
	private String alpostid;
	private Date alinserttime;
	
	public String getAldesc() {
		return aldesc;
	}
	public void setAldesc(String aldesc) {
		this.aldesc = aldesc;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAlname() {
		return alname;
	}
	public void setAlname(String alname) {
		this.alname = alname;
	}
	public String getAlurl() {
		return alurl;
	}
	public void setAlurl(String alurl) {
		this.alurl = alurl;
	}
	public String getAlpostid() {
		return alpostid;
	}
	public void setAlpostid(String alpostid) {
		this.alpostid = alpostid;
	}
	public Date getAlinserttime() {
		return alinserttime;
	}
	public void setAlinserttime(Date alinserttime) {
		this.alinserttime = alinserttime;
	}
	@Override
	public String toString() {
		return "Album [aid=" + aid + ", alname=" + alname + ", aldesc=" + aldesc + ", alurl=" + alurl + ", alpostid="
				+ alpostid + ", alinserttime=" + alinserttime + "]";
	}
	
	
}
