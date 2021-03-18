package itemmore;

public class review {
	
	private String num;//순서
	private String id;  //작성자
	private String text;  //작성내용
	private String date;  //작성날짜
	

	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
