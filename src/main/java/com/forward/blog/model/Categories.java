package com.forward.blog.model;

public class Categories {
	private int cid;
	private String cname;
	private int num;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Override
	public String toString() {
		return "Categories [cid=" + cid + ", cname=" + cname + ", num=" + num + "]";
	}
	
	
	
}	
