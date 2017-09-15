package com.forward.blog.model;

public class Tag {
	private int tid;
	private String tname;
	private String tdesc;
	public String getTdesc() {
		return tdesc;
	}
	public void setTdesc(String tdesc) {
		this.tdesc = tdesc;
	}
	private int num;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	@Override
	public String toString() {
		return "Tag [tid=" + tid + ", tname=" + tname + ", tdesc=" + tdesc + ", num=" + num + "]";
	}
	
}
