package admin_member;

public class message_VO {
	
	private String id;
	private String name;
	private String title;
	private String contents;
	private String state;
	private String send_date;
	
	public message_VO(){}
	
	public message_VO(String id , String name , String title , String contents, String state, String send_date) {
		
		this.id=id;
		this.name=name;
		this.title=title;
		this.contents=contents;
		this.state=state;
		this.send_date=send_date;
		
		
	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSend_date() {
		return send_date;
	}
	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}
	
	
	

}
