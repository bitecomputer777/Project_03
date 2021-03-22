package itemmore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;



public class review_dao {
	private Connection conn=null;
	private PreparedStatement ptmt=null;
	private ResultSet rs=null;
	
	public review_dao () {
		String uri="jdbc:oracle:thin:@localhost:1521:orcl";
		String driver="oracle.jdbc.driver.OracleDriver";
		String user="food";
		String password="123456";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(uri,user,password);
	
		}catch (ClassNotFoundException | SQLException e) {
			System.out.println("DB 접속 실패");
		 e.printStackTrace();
		}
     }
	public review view_select(int num) {
		String sql="select * from review where num=?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1,num);
			rs= ptmt.executeQuery();
			if(rs.next()) {
				review data = new review(rs.getInt(1),rs.getString(2),rs.getDate(3),rs.getString(4));
			return data;
			}
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("뭔가가 실패");			
		}
		return null;
	}
	
	
	
	
	//	try {
		//	conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:food");
		//}catch(SQLException e) {
		//	e.printStackTrace();
		//}
//	}

	
	
	public int review_select(String id, String text) {
		int num=getnum();
		String sql ="insert into review values(?,?,?,?)";
		try {
			ptmt=conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, id);
			ptmt.setTimestamp(3, new Timestamp(new Date().getTime()));
			ptmt.setString(4, text);
			
			ptmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("리뷰작성 DB 등록 오류");
	}
	return num;
	}
	
	private int getnum() {
		String sql="select Max(num) as m from review";
		int num=1;
		try {
			ptmt = conn.prepareStatement(sql);
			rs=ptmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("m")+1;
			}
		}catch(SQLException e) {
			System.out.println("최대 번호 오류");
			e.printStackTrace();
		}
		return 1;
	}
	
		
	
	
public ArrayList<review> list_select(){
	ArrayList<review> list = new ArrayList<review>();
	
	String sql = "select * from obtain_pic order by ob_num desc";
	try {
		ptmt = conn.prepareStatement(sql);
		rs = ptmt.executeQuery();
		while(rs.next()) {
			review data = new review(
rs.getInt("num"),rs.getString("id"),
rs.getDate("reviewdate"),rs.getString("text")
			);
			list.add(data);
		}
		
	}catch(SQLException e) {
		System.out.println("요청글 DB 선택 오류");
		e.printStackTrace();
	}
	return list;
}
}



