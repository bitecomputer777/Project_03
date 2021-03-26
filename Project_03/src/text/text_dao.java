package text;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import change.change;
import review.review;

public class text_dao {
	private Connection conn=null;
	private PreparedStatement ptmt= null;
	private ResultSet rs=null;
	
public text_dao() {
	String uri="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
	String user="food";
	String password="123456";	
	try {
	conn=DriverManager.getConnection(uri,user,password);
	}catch(SQLException e) {
		e.printStackTrace();	
		}
}

public text view_select(int num) {
	String sql="select * from text where num=?";
	try {
		ptmt = conn.prepareStatement(sql);
		ptmt.setInt(1,num);
		rs= ptmt.executeQuery();
		if(rs.next()) {
			text data = new text (rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)     );
		return data;
		}
	}catch(SQLException e) {
		e.printStackTrace();
		System.out.println("뭔가가 실패");			
	}
	return null;
}


public ArrayList<text> list_select(String no){
	ArrayList<text> list =new ArrayList<text>();
	
	String sql = "select * from text where itemno=? order by num desc";
	try {
		ptmt = conn.prepareStatement(sql);
		ptmt.setString (1,no);
		
		rs = ptmt.executeQuery();
		while (rs.next()) {
			System.out.println("상품상세정보 등록 실패");
			text data = new text (rs.getString("condition"),rs.getString("from"),rs.getString("brand"),rs.getString("keep"),rs.getString("kg"),rs.getString("detaimg"),rs.getString("itemno"));
		list.add(data);
		}
	}catch(SQLException e) {
		System.out.println("판매자 DB 선택 오류");
		e.printStackTrace();
}
	return list;
	}






public void text_insert(String condition,String from, String brand, String keep, String kg, String detaimg,  String itemno) {
	int num=getnum();
	String sql="insert into text values(?,?,?,?,?,?,?)";
	try {
		 
		ptmt=conn.prepareStatement(sql);

		ptmt.setString(1, condition);
		ptmt.setString(2, from);
		ptmt.setString(3, brand);
		ptmt.setString(4, keep);
		ptmt.setString(5, kg);
		ptmt.setString(6, detaimg);
		ptmt.setString(7, itemno);
		
		
		
		ptmt.executeUpdate();
		
	}catch(SQLException e) {
		e.printStackTrace();
		System.out.println("상품 상세정보 등록 실패");
		
	}
}

	private int getnum() {
		String sql="select Max(num) as m from text";
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
