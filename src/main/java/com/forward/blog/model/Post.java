package com.forward.blog.model;

import java.sql.Date;
import java.util.Arrays;
import java.util.List;

public class Post {
	
	private int pid;
	private String ptitle;
	private String pcontent;
	private int pcategoriesid;
	private String pfine;
	private int drafts = 0;
	private Date pinserttime;
	private Date pupdatatime;
	private String categoriesname;
	private List<Tag> tagList;
	private String[] tids;
	private int[] tidsInt;
	private String[] oldtagids;
	
	
	public int getDrafts() {
		return drafts;
	}
	public void setDrafts(int drafts) {
		this.drafts = drafts;
	}
	public String[] getOldtagids() {
		return oldtagids;
	}
	public void setOldtagids(String[] oldtagids) {
		this.oldtagids = oldtagids;
	}
	public void setTidsInt(int[] tidsInt) {
		this.tidsInt = tidsInt;
	}
	public int[] getTidsInt() {
		tidsInt = new int[tids.length];
		for(int i = 0;i < tids.length;i++){
			System.out.println(tidsInt[i]);
			tidsInt[i] = Integer.parseInt(tids[i]);
		}
		return tidsInt;
	}
	public String[] getTids() {
		return tids;
	}
	public void setTids(String[] tids) {
		this.tids = tids;
	}
	public List<Tag> getTagList() {
		return tagList;
	}
	public void setTagList(List<Tag> tagList) {
		this.tagList = tagList;
	}
	public String getCategoriesname() {
		return categoriesname;
	}
	public void setCategoriesname(String categoriesname) {
		this.categoriesname = categoriesname;
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	
	public int getPcategoriesid() {
		return pcategoriesid;
	}
	public void setPcategoriesid(int pcategoriesid) {
		this.pcategoriesid = pcategoriesid;
	}
	public String getPfine() {
		return pfine;
	}
	public void setPfine(String pfine) {
		this.pfine = pfine;
	}
	public Date getPinserttime() {
		return pinserttime;
	}
	public void setPinserttime(Date pinserttime) {
		this.pinserttime = pinserttime;
	}
	public Date getPupdatatime() {
		return pupdatatime;
	}
	public void setPupdatatime(Date pupdatatime) {
		this.pupdatatime = pupdatatime;
	}
	@Override
	public String toString() {
		return "Post [pid=" + pid + ", ptitle=" + ptitle + ", pcontent=" + pcontent + ", pcategoriesid=" + pcategoriesid
				+ ", pfine=" + pfine + ", drafts=" + drafts + ", pinserttime=" + pinserttime + ", pupdatatime="
				+ pupdatatime + ", categoriesname=" + categoriesname + ", tagList=" + tagList + ", tids="
				+ Arrays.toString(tids) + ", tidsInt=" + Arrays.toString(tidsInt) + ", oldtagids="
				+ Arrays.toString(oldtagids) + "]";
	}
	
	
	
	
	
}
