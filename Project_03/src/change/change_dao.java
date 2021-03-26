package change;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class change_dao {
	private Connection conn=null;
	private PreparedStatement ptmt= null;
	private ResultSet rs=null;
	
public change_dao () {
	String uri="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
	String user="food";
	String password="123456";	
	try {
	conn=DriverManager.getConnection(uri,user,password);
	}catch(SQLException e) {
		e.printStackTrace();
	}
}



public change view_select(int num) {
	String sql="select * from change where num=?";
	try {
		ptmt = conn.prepareStatement(sql);
		ptmt.setInt(1,num);
		rs= ptmt.executeQuery();
		if(rs.next()) {
			change data = new change (rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
		return data;
		}
	}catch(SQLException e) {
		e.printStackTrace();
		System.out.println("뭔가가 실패");			
	}
	return null;
}




public ArrayList<change> list_select(String no){
	ArrayList<change> list =new ArrayList<change>();
	
	String sql = "select * from change where itemno=? order by num desc";
	try {
		ptmt = conn.prepareStatement(sql);
		ptmt.setString (1,no);
		
		rs = ptmt.executeQuery();
		while (rs.next()) {
			System.out.println("판매자세정보 등록 실패");
			change data = new change(rs.getString("name"),rs.getString("tel"),rs.getString("teltime"),rs.getString("email"),rs.getString("fax")
					,rs.getString("codenum"),rs.getString("address1"),rs.getString("address2"),rs.getString("itemno"));
		list.add(data);
		}
	}catch(SQLException e) {
		System.out.println("판매자 DB 선택 오류");
		e.printStackTrace();
}
	return list;
	}



public void change_insert (String  name, String  tel, String teltime, String email, String fax
		,String codenum, String address1,String address2, String itemno ) {
	int num=getnum();
	String sql="insert into change values(?,?,?,?,?,?,?,?,?)";	
	try {
		ptmt=conn.prepareStatement(sql);
		
		ptmt.setString(1, name);	
		ptmt.setString(2, tel);
		ptmt.setString(3, teltime);
		ptmt.setString(4, email);
		ptmt.setString(5, fax);
		ptmt.setString(6, codenum);
		ptmt.setString(7, address1);
		ptmt.setString(8, address2);
		ptmt.setString(9, itemno);
		
		ptmt.executeUpdate();
		
	}catch(SQLException e) {
		e.printStackTrace();
		System.out.println("판매자 상세 정보 저장 실패");
}
}

private int getnum() {
	String sql="select Max(num) as m from change";
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
