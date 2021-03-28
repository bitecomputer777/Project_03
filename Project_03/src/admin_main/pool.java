package admin_main;

import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class pool extends HttpServlet {
	
	public void init() throws ServletException{
		jdbcDriver();
		Connectionpool();
	}
	
	private void jdbcDriver() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {
			throw new RuntimeException("out");
		}
	}
	
	private void Connectionpool() {
		String url="jdbc:oracle:thin:@175.203.68.186:1521:orcl";
		String user="food";
		String password="123456";
		
		try {
			ConnectionFactory conn= new DriverManagerConnectionFactory(url,user,password);
			PoolableConnectionFactory pool = new PoolableConnectionFactory(conn,null);
			
			GenericObjectPoolConfig<PoolableConnection> poolconf = new GenericObjectPoolConfig<>();
			poolconf.setTimeBetweenEvictionRunsMillis(60000L*5L);
			poolconf.setMinIdle(5);
			poolconf.setMaxTotal(100);
			poolconf.setTestWhileIdle(true);
			
			GenericObjectPool<PoolableConnection> connpool =
					new GenericObjectPool<>(pool,poolconf);
			pool.setPool(connpool);
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = new PoolingDriver();
									//(PoolingDriver)DriverManager.getDriver("jdbc:apach:commons:dbcp");
				
			driver.registerPool("connp", connpool);
					
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("pool ");
		}
		
	}
	
}
