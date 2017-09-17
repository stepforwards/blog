package com.forward.blog.model;

import java.sql.Date;

public class Comment {
	
	private int coid;
	private int coreplyid;
	private int copostid;
	private String coname;
	private String coemail;
	private String cocontent;
	private Date coinserttime;
	private String ptitle;
	private String coreplyname;
	
	public String getCoreplyname() {
		return coreplyname;
	}
	public void setCoreplyname(String coreplyname) {
		this.coreplyname = coreplyname;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public int getCoid() {
		return coid;
	}
	public void setCoid(int coid) {
		this.coid = coid;
	}
	public int getCoreplyid() {
		return coreplyid;
	}
	public void setCoreplyid(int coreplyid) {
		this.coreplyid = coreplyid;
	}
	public int getCopostid() {
		return copostid;
	}
	public void setCopostid(int copostid) {
		this.copostid = copostid;
	}
	public String getConame() {
		return coname;
	}
	public void setConame(String coname) {
		this.coname = coname;
	}
	
	public String getCoemail() {
		return coemail;
	}
	public void setCoemail(String coemail) {
		this.coemail = coemail;
	}
	public String getCocontent() {
		return cocontent;
	}
	public void setCocontent(String cocontent) {
		this.cocontent = cocontent;
	}
	public Date getCoinserttime() {
		return coinserttime;
	}
	public void setCoinserttime(Date coinserttime) {
		this.coinserttime = coinserttime;
	}
	@Override
	public String toString() {
		return "Comment [coid=" + coid + ", coreplyid=" + coreplyid + ", copostid=" + copostid + ", coname=" + coname
				+ ", coemail=" + coemail + ", cocontent=" + cocontent + ", coinserttime=" + coinserttime + ", ptitle="
				+ ptitle + ", coreplyname=" + coreplyname + "]";
	}
	
	
	
}
