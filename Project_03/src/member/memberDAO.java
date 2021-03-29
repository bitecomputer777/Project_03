package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Date;








public class memberDAO {
   private static final String mmmm = null;
private Connection conn=null;
   private PreparedStatement ptmt=null;
   private ResultSet rs=null;
   
   public memberDAO() {
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
   }
   
   public boolean id_check(String id) {
      String sql="select id from member where id=?";
      try {
         ptmt = conn.prepareStatement(sql);
         ptmt.setString(1, id);
         rs = ptmt.executeQuery();
         if(rs.next()) {
            return true;
         }
         
      }catch(SQLException e) {
         e.printStackTrace();
         System.out.println("아이디 중복확인 DB 오류");
      }
      return false;
   }
   
   public void member_insert(member vo) {
      String sql="insert into member(mnum,id,pass,name,phone,email,birthday,point,m_level)";
      sql +=" values(?,?,?,?,?,?,?,?,?)";
      int num=getnum("member");
       System.out.println("member" + num);
       
       System.out.println(vo.getId());
       
      try {
    	  
    	
         ptmt = conn.prepareStatement(sql);
         ptmt.setInt(1, num);
         
         ptmt.setString(2, vo.getId());
         ptmt.setString(3, vo.getPass());
         ptmt.setString(4, vo.getName());
         ptmt.setString(5, vo.getPhone());
         ptmt.setString(6, vo.getEmail());
         ptmt.setString(7, vo.getBirthday());
         ptmt.setString(8, "0");
         ptmt.setInt(9, 1);
         ptmt.executeUpdate();
       
      }catch(SQLException e) {
         e.printStackTrace();
         System.out.println("회원가입 DB 저장 실패");
      }
   }
   private int getnum(String table) {
      int num=1;
      String sql="select Max(mnum) as m from "+table;
      try {
         ptmt = conn.prepareStatement(sql);
         rs = ptmt.executeQuery();
         if(rs.next()) {
            num = rs.getInt("m") + 1;
         }
         
      }catch(SQLException e) {
         e.printStackTrace();
         System.out.println("회원 num 조회 실패");
      }
      return num;
   }
   
   public boolean member_login(String id, String pw) {
      String sql="select * from member where id=? and pass=?";
      try {
         PreparedStatement ptmt = conn.prepareStatement(sql);
         ptmt.setString(1, id);
         ptmt.setString(2, pw);
         ResultSet rs = ptmt.executeQuery();
         if(rs.next())
            return true;
         
      } catch (SQLException e) {
         e.printStackTrace();
         System.out.println("로그인 조회 DB 실패");
      }
      return false;
   }






}


