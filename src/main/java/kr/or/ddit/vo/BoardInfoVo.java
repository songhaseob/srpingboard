package kr.or.ddit.vo;

public class BoardInfoVo {
	private int bor_no;
	private int bor_act;
	private String bor_name;
	
 
	
	public int getBor_no() {
		return bor_no;
	}
	
	public void setBor_no(int bor_no) {
		this.bor_no = bor_no;
	}
	public int getBor_act() {
		return bor_act;
	}
	public void setBor_act(int bor_act) {
		this.bor_act = bor_act;
	}
	public String getBor_name() {
		return bor_name;
	}
	public void setBor_name(String bor_name) {
		this.bor_name = bor_name;
	}
	@Override
	public String toString() {
		return "BoardInfoVo [bor_no=" + bor_no + ", bor_act=" + bor_act + ", bor_name=" + bor_name + "]";
	}
	
	
}
