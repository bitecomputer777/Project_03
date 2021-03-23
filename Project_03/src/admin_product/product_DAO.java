package admin_product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class product_DAO {
	Connection conn=null;
	PreparedStatement ptmt=null;
	ResultSet rs=null;
	
	public product_DAO() {
		String uri="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
		String user="food";
		String pass="123456";
		try {
			conn = DriverManager.getConnection(uri,user,pass);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insert(String itemtit, int price, int among,String[] opt,String[] opt_m,
			String kind, String bigimg) {
		String str_opt=arrto(opt);
		String opt_money=arrto(opt_m);
		int num=getnum(kind);
		String o_num=null;
		switch(kind) {
		case "중식":o_num="c";		break;
		case "일식":o_num="j";			break;
		case "한식":o_num="k";			break;
		case "분식":o_num="b";			break;
		case "치킨/피자":o_num="p";			break;
		}
		int i=100000;
		while(num/i!=1) {
			o_num+="0";
			i/=10;
		}
		o_num+=Integer.toString(num);
		String sql="insert into item values(?,?,?,?,?,?,?,?,?)";
		
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, bigimg);
			ptmt.setString(2,itemtit);
			ptmt.setInt(3, price);
			ptmt.setString(4, str_opt+","+opt_money);
			ptmt.setString(5, o_num);
			ptmt.setString(6, kind);
			ptmt.setInt(7, among);
			ptmt.setInt(8, 0);
			ptmt.setInt(9, num);
			ptmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private String arrto(String[] tmp) {
		String str=tmp[0];
		for(int i=1; i<tmp.length; i++) {
			str +="-"+tmp[i];
		}
		return str;
	}
	private int getnum(String kind) {
		String sql ="select Max(num) as m from item where kind=?";
		int num=1;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, kind);
			rs=ptmt.executeQuery();
			if(rs.next()) {
				num= rs.getInt("m")+1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return num;
	}
}
