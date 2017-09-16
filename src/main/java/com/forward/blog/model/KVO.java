package com.forward.blog.model;

public class KVO {
	
	private String ptitle = "";
	private String alname = "";
	private int pcategoriesid;
	private int currentStrip;
	private int pageSize;
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getAlname() {
		return alname;
	}
	public void setAlname(String alname) {
		this.alname = alname;
	}
	public int getCurrentStrip() {
		return currentStrip;
	}
	public void setCurrentStrip(int currentStrip) {
		this.currentStrip = currentStrip;
	}
	private int tid;
	private int drafts = 0;
	
	public int getDrafts() {
		return drafts;
	}
	public void setDrafts(int drafts) {
		this.drafts = drafts;
	}
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
		return "KVO [ptitle=" + ptitle + ", alname=" + alname + ", pcategoriesid=" + pcategoriesid + ", currentStrip="
				+ currentStrip + ", pageSize=" + pageSize + ", tid=" + tid + ", drafts=" + drafts + "]";
	}
	
	
	
	
	
}
