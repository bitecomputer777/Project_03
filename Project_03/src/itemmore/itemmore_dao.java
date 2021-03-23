package itemmore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class itemmore_dao {

Connection conn=null;
PreparedStatement ptmt=null;
ResultSet rs=null;

public itemmore_dao() {
	String uri="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
	String user="food";
	String pass="123456";
	try {
		conn = DriverManager.getConnection(uri,user,pass);
	}catch(Exception e) {
		e.printStackTrace();
	}
}





public item view_select (String num) {
	String sql = "select * from item where itemno=?";
	try {
		ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, num);
		rs = ptmt.executeQuery();
		if(rs.next()) {
			
			item data = new item(rs.getString("bigimg"), rs.getString("itemtit"),rs.getInt("pricereal"),
					rs.getString("opt"), rs.getString("itemno"), rs.getString("kind"), rs.getInt("among"), rs.getInt("sale"));

    			
			return data;
		}
	}catch(SQLException e) {
		e.printStackTrace();
		System.out.print("선택 오류");
	}
return null;
}




}
