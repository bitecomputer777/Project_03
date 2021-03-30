package admin_member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class member_adminDAO {
	
	private Connection  conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public member_adminDAO() {
		
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:connp");
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
			
		}
	}
	public ArrayList<member_adminVO> test_list(member_adminVO vo) {
			
			ArrayList<member_adminVO> list =new ArrayList<member_adminVO>();
			String sql = "select * from test_admin_member";
			
			
		 try {
			 pstmt = conn.prepareStatement(sql);
			 rs= pstmt.executeQuery();
			 while(rs.next()) {
				 
				 vo = new member_adminVO();
			 vo.setId(rs.getString("id"));
			 vo.setName(rs.getString("name"));
			 vo.setPassword(rs.getString("password"));
			 vo.setBirth(rs.getString("birth"));
			 vo.setTell(rs.getString("tell"));
			 vo.setEmail(rs.getString("email"));
			 vo.setEtc(rs.getString("etc"));
			 list.add(vo);
			 
			 }
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
			
			
			
			return list;
		}

}
