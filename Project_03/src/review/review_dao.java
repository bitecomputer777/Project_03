package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;



public class review_dao {  //서버에 로그인
	private Connection conn=null;
	private PreparedStatement ptmt=null;
	private ResultSet rs=null;
	
	public review_dao () {
		String uri="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
		//String driver="oracle.jdbc.driver.OracleDriver";
		String user="food";
		String password="123456";
try {
			
			
			//Class.forName(driver);
	conn=DriverManager.getConnection(uri,user,password);
	
		}catch ( SQLException e) {
		//	System.out.println("DB 접속 실패");
	e.printStackTrace();
		}
     }
	
	
	
	public review view_select(int num) {
		String sql="select * from rivew where num=?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1,num);
			rs= ptmt.executeQuery();
			if(rs.next()) {
				review data = new review(rs.getInt(1),rs.getString(2),rs.getDate(3),rs.getString(4),rs.getString(5));
			return data;
			}
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("뭔가가 실패");			
		}
		return null;
	}

	
public ArrayList<review> list_select(String no){//review_hnd 클래스에 있는 변수
	ArrayList<review> list = new ArrayList<review>();
	
	String sql = "select * from rivew where itemno=? order by num desc";
	try {
		ptmt = conn.prepareStatement(sql);
		ptmt.setString (1,no); //메써드 ()안에 변수가 있으면 이거해야함  
		
		
		rs = ptmt.executeQuery();
		while(rs.next()) {
			System.out.println("dkanrjsk");
			review data = new review(rs.getInt("num"),rs.getString("id"),
rs.getDate("rivewdate"),rs.getString("text"),rs.getString("itemno")
			);
			list.add(data);
		}
		
	}catch(SQLException e) {
		System.out.println("요청글 DB 선택 오류");
		e.printStackTrace();
	}
	return list;
}




public void review_insert(String text, String user, String itemno) {//()안에는   public  String write의  od.review_insert() 순서대로
	int num=getnum();
	String sql="insert into rivew values(?,?,?,?,?)";//ptmt와 ?는 테이블에 있는거 전부 써야함
	try {
		 
		ptmt=conn.prepareStatement(sql);
		
		ptmt.setInt(1, num);
		ptmt.setString(2, user);
		ptmt.setString(3, text);
        ptmt.setTimestamp(4, new Timestamp(new Date().getTime()));
		ptmt.setString(5, itemno);
		
		ptmt.executeUpdate();
		
	}catch(SQLException e) {
		e.printStackTrace();
		System.out.println("댓글작성실패");
	}
	}

private int getnum() {
	String sql="select Max(num) as m from rivew";
	int num=1;
	try {
		ptmt = conn.prepareStatement(sql);
		rs=ptmt.executeQuery();
		if(rs.next()) {
			return rs.getInt("m")+1;
		}
	}catch(SQLException e) {
		System.out.println(" 오류");
		e.printStackTrace();
	}
	return 1;
}



}



