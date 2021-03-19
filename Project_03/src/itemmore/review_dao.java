package itemmore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class review_dao {
	private Connection conn=null;
	private PreparedStatement ptmt=null;
	private ResultSet rs=null;
	
	public review_dao () {
	
		try {
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
}