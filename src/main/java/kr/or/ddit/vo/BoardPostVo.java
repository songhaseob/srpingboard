package kr.or.ddit.vo;

import java.util.Date;

public class BoardPostVo {
	private int bor_no;
	private int post_no;
	private String user_id;
	private String title;
	private String cont;
	private Date reg_dt;
	private int post_del;
	private int bor_c_nm;
	private int post_c_no;
	private String rep_user_id;
	public int getBor_no() {
		return bor_no;
	}
	
	public BoardPostVo() {}

	public void setBor_no(int bor_no) {
		this.bor_no = bor_no;
	}
	public int getPost_no() {
		return post_no;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public int getPost_del() {
		return post_del;
	}
	public void setPost_del(int post_del) {
		this.post_del = post_del;
	}
	public int getBor_c_nm() {
		return bor_c_nm;
	}
	public void setBor_c_nm(int bor_c_nm) {
		this.bor_c_nm = bor_c_nm;
	}
	public int getPost_c_no() {
		return post_c_no;
	}
	public void setPost_c_no(int post_c_no) {
		this.post_c_no = post_c_no;
	}
	public String getRep_user_id() {
		return rep_user_id;
	}
	public void setRep_user_id(String rep_user_id) {
		this.rep_user_id = rep_user_id;
	}
	@Override
	public String toString() {
		return "BoardPostVo [bor_no=" + bor_no + ", post_no=" + post_no + ", user_id=" + user_id + ", title=" + title
				+ ", cont=" + cont + ", reg_dt=" + reg_dt + ", post_del=" + post_del + ", bor_c_nm=" + bor_c_nm
				+ ", post_c_no=" + post_c_no + ", rep_user_id=" + rep_user_id + "]";
	}
	
	
}
