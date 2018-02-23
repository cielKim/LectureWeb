package kr.co.bit.board;

public class BoardVO {
	
	private int no;
	private String title;
	private String writer;
	private String conte;
	private String regDate;
	
	public BoardVO() {
		
	}
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getConte() {
		return conte;
	}
	public void setConte(String conte) {
		this.conte = conte;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}
