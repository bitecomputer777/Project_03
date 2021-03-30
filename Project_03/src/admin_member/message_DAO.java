package admin_member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class message_DAO {
	
	private Connection  conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public message_DAO() {
		
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:connp");
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
			
		}
	}
	public ArrayList<message_VO> message_list(message_VO vo) {
		
		ArrayList<message_VO> list =new ArrayList<message_VO>();
		String sql = "select * from message_admin";
		
		
	 try {
		 pstmt = conn.prepareStatement(sql);
		 rs= pstmt.executeQuery();
		 while(rs.next()) {
			 
			 vo = new message_VO();
		 vo.setId(rs.getString("id"));
		 vo.setName(rs.getString("name"));
		 vo.setTitle(rs.getString("title"));
		 vo.setContents(rs.getString("contents"));
		 vo.setState(rs.getString("state"));
		 vo.setSend_date(rs.getString("send_date"));
		 list.add(vo);
		 
		 }
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
		
		
		
		return list;
	}
	
	public ArrayList<message_VO> message_search(message_VO vo) {
		
		ArrayList<message_VO> list =new ArrayList<message_VO>();
		String sql = "select * from message_admin where id = ?";
		
		
	 try {
		 pstmt = conn.prepareStatement(sql);
		 
		 pstmt.setString(1, vo.getId());
		 
		 rs= pstmt.executeQuery();
		 
		 while(rs.next()) {
			 
			 vo = new message_VO();
		 vo.setId(rs.getString("id"));
		 vo.setName(rs.getString("name"));
		 vo.setTitle(rs.getString("title"));
		 vo.setContents(rs.getString("contents"));
		 vo.setState(rs.getString("state"));
		 vo.setSend_date(rs.getString("send_date"));
		 list.add(vo);
		 
		 }
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
		
		
		
		return list;
	}
	
	

}
