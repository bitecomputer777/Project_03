package member;

public class member {
   private String id;
   private String pass;
   private String name;
   private String phone;
   private String email;
   private String birthday;
   
   private int point;
   private int m_level;
   
   public member() {
      this.point=0;
      this.m_level=0;
   }
   public member(String id, String pass, String email,
         String point, int m_level, String birthday, String phone, String name) {
      this.id=id;
      this.pass=pass;
      this.name=name;
      this.phone=phone;
      this.email=email;
      this.birthday=birthday;
      this.point=Integer.parseInt(point);
      this.m_level=m_level;
   }
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getBirthday() {
	return birthday;
}
public void setBirthday(String birthday) {
	this.birthday = birthday;
}
public int getPoint() {
	return point;
}
public void setPoint(int point) {
	this.point = point;
}
public int getM_level() {
	return m_level;
}
public void setM_level(int m_level) {
	this.m_level = m_level;
}
}