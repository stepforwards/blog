package com.forward.blog.model;

public class Tpcontact {
	private int tpid;
	private int tptagid;
	private int tppostid;
	

	public int getTpid() {
		return tpid;
	}

	public void setTpid(int tpid) {
		this.tpid = tpid;
	}

	public int getTptagid() {
		return tptagid;
	}

	public void setTptagid(int tptagid) {
		this.tptagid = tptagid;
	}

	public int getTppostid() {
		return tppostid;
	}

	public void setTppostid(int tppostid) {
		this.tppostid = tppostid;
	}
	
	@Override
	public String toString() {
		return "Tpcontact [tpid=" + tpid + ", tptagid=" + tptagid + ", tppostid=" + tppostid + "]";
	}
}
