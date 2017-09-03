package com.forward.blog.model;

public class KVO {
	
	private String ptitle = "";
	private int pcategoriesid;
	private int tid;
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public int getPcategoriesid() {
		return pcategoriesid;
	}
	public void setPcategoriesid(int pcategoriesid) {
		this.pcategoriesid = pcategoriesid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	@Override
	public String toString() {
		return "KVO [ptitle=" + ptitle + ", pcategoriesid=" + pcategoriesid + ", tid=" + tid + "]";
	}
	
	
	
	
}
