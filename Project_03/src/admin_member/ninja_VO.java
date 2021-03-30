package admin_member;

public class ninja_VO {
	
	private String id ;
	private String name ;
	private String join_birth;
	private String trouble ;
	private String state ;
	
	
	public ninja_VO() {}
	
	public ninja_VO(String id , String name , String join_birth, String trouble,String state) {
		
		this.id= id;
		this.name= name;
		this.join_birth=join_birth;
		this.trouble=trouble;
		this.state=state;
		
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

	public String getJoin_birth() {
		return join_birth;
	}

	public void setJoin_birth(String join_birth) {
		this.join_birth = join_birth;
	}

	public String getTrouble() {
		return trouble;
	}

	public void setTrouble(String trouble) {
		this.trouble = trouble;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
}
