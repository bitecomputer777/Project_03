package change;

public class change {

	private String  name;// 대표자 이름
	private String  tel;// 연락처
	private String teltime;// 응대시간
	private String email;// 이메일
	private String fax;// 펙스번호
	private String codenum;// 사업자등록번호
	private String address1;// 통신판매 주소
	private String address2; // 업소 상세주소
	private String itemno; // 상품번호
	
	
	public change() {}
	public change(String name, String tel,String teltime,  String email, String fax, String codenum
			,String address1, String address2, String itemno) {
		this.name=name;
		this.tel=tel;
		this.teltime = teltime;
		this.email=email;
		this.fax=fax;
		this.codenum=codenum;
		this.address1=address1;
		this.address2=address2;
		this.itemno=itemno;
		
	}
	
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTeltime() {
		return teltime;
	}
	public void setTeltime(String teltime) {
		this.teltime = teltime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getCodenum() {
		return codenum;
	}
	public void setCodenum(String codenum) {
		this.codenum = codenum;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getItemno() {
		return itemno;
	}
	public void setItemno(String itemno) {
		this.itemno = itemno;
	}
	
	
	
	
}
