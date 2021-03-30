package admin_member;

public class member_adminVO {

		private String id ;
		private String password;
		private String name;
		private String birth;
		private String tell;
		private String addr;
		private String email;
		private String etc;
		
		
		public member_adminVO(){}
		
		public member_adminVO(String id, String password, String name, String birth, String tell,String email, String addr, String etc){
			
			this.id=id;
			this.password=password;
			this.name=name;
			this.birth=birth;
			this.tell=tell;
			this.email=email;
			this.addr=addr;
			this.etc=etc;
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getBirth() {
			return birth;
		}

		public void setBirth(String birth) {
			this.birth = birth;
		}

		public String getTell() {
			return tell;
		}

		public void setTell(String tell) {
			this.tell = tell;
		}

		public String getAddr() {
			return addr;
		}

		public void setAddr(String addr) {
			this.addr = addr;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getEtc() {
			return etc;
		}

		public void setEtc(String etc) {
			this.etc = etc;
		}
		
		
}
