package admin_member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ninja_DAO {
	
	private Connection  conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public ninja_DAO() {
		
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:connp");
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
			
		}
		
		
	}
	
	public ArrayList<ninja_VO> ninja_list(ninja_VO vo) {
		
		ArrayList<ninja_VO> list =new ArrayList<ninja_VO>();
		String sql = "select * from out_member";
		
		
	 try {
		 pstmt = conn.prepareStatement(sql);
		 rs= pstmt.executeQuery();
		 while(rs.next()) {
			 
			 vo = new ninja_VO();
		 vo.setId(rs.getString("id"));
		 vo.setName(rs.getString("name"));
		 vo.setJoin_birth(rs.getString("join_birth"));
		 vo.setTrouble(rs.getString("trouble"));
		 vo.setState(rs.getString("state"));
		 list.add(vo);
		 
		 }
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
		
		
		
		return list;
	}
	
	

}
