package itemmore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

public class review_dao {
	private Connection conn=null;
	private PreparedStatement ptmt=null;
	private ResultSet rs=null;
	
	public review_dao () {
	
		try {
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:connp");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	
	
	public review review_select(String writer, String text) {
		int num=getnum();
		String sq1 ="insert into reivew_pic values(?,?,?,?)";
		try {
			ptmt=conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, writer);
			ptmt.setTimestamp(3, new Timestamp(new Date().getTime()));
			ptmt.setString(4, text);
			
			ptmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println('리뷰작성 DB 등록 오류");
	}
	
	
	
	
	
}


