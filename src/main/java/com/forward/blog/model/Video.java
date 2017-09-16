package com.forward.blog.model;

import java.sql.Date;

public class Video {
	
	private int vid;
	private String vname;
	private String vurl;
	private int valbumid;
	private String valbumurl;
	private Date vinserttime;
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVurl() {
		return vurl;
	}
	public void setVurl(String vurl) {
		this.vurl = vurl;
	}
	public int getValbumid() {
		return valbumid;
	}
	public void setValbumid(int valbumid) {
		this.valbumid = valbumid;
	}
	public String getValbumurl() {
		return valbumurl;
	}
	public void setValbumurl(String valbumurl) {
		this.valbumurl = valbumurl;
	}
	public Date getVinserttime() {
		return vinserttime;
	}
	public void setVinserttime(Date vinserttime) {
		this.vinserttime = vinserttime;
	}
	@Override
	public String toString() {
		return "Video [vid=" + vid + ", vname=" + vname + ", vurl=" + vurl + ", valbumid=" + valbumid + ", valbumurl="
				+ valbumurl + ", vinserttime=" + vinserttime + "]";
	}
	
	
}
