package kr.or.ddit.vo;

public class BoardPageVo {
	private int page;
	private int pageSize;
	private String userid;
	private String usernm;
	private String alias;
	private int bor_no;
	
	public BoardPageVo() {
		
	}
	
	public BoardPageVo(int page,int pageSize,int bor_no) {
		this.page = page;
		this.pageSize = pageSize;
		this.bor_no = bor_no;
	}
	
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}
	
	public int getBor_no() {
		return bor_no;
	}

	public void setBor_no(int bor_no) {
		this.bor_no = bor_no;
	}

	@Override
	public String toString() {
		return "BoardPageVo [page=" + page + ", pageSize=" + pageSize + ", userid=" + userid + ", usernm=" + usernm
				+ ", alias=" + alias + ", bor_no=" + bor_no + "]";
	}

	

	
	
}
