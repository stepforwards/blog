package com.forward.blog.model;

public class Paging {
	
	private String prevOrNext;
	private String alname = "";
	private int currentPage = 1;
	private int currentTotal;
	private int pageSize = 16;
	
	public String getAlname() {
		return alname;
	}
	public void setAlname(String alname) {
		this.alname = alname;
	}
	public int getCurrentTotal() {
		return currentTotal;
	}
	public void setCurrentTotal(int currentTotal) {
		this.currentTotal = currentTotal;
	}
	public String getPrevOrNext() {
		return prevOrNext;
	}
	public void setPrevOrNext(String prevOrNext) {
		this.prevOrNext = prevOrNext;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	@Override
	public String toString() {
		return "Paging [prevOrNext=" + prevOrNext + ", currentPage=" + currentPage + ", currentTotal=" + currentTotal
				+ ", pageSize=" + pageSize + "]";
	}
	
}
