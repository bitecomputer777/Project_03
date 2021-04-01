package Cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Cart_DAO {
	private static final String name = null;
	   private Connection conn=null;
	   private PreparedStatement ptmt=null;
	   private ResultSet rs=null;
	   
	   public Cart_DAO() {
	      String uri="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
	      String driver="oracle.jdbc.driver.OracleDriver";
	      String user="food";
	      String password="123456";
	      try {
	         Class.forName(driver);
	         conn=DriverManager.getConnection(uri,user,password);
	         
	      } catch (ClassNotFoundException | SQLException e) {
	         System.out.println("DB 접속 실패");
	         e.printStackTrace();
	      }
	   }}
