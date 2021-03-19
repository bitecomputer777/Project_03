package itemmore;

import java.util.Date;

public class review {
	
	private int num;//순서
	private String id;  //작성자
	private String text;  //작성내용
	private Date date;  //작성날짜
	
	public review() {}
	public review(int num, String id, String text,  Date date) {
		this.num=num;
		this.id=id;
		this.text=text;
		this.date=date;
	
	}
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num =num;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
