package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserJDBC {	
	public Connection con;	
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	public UserJDBC() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pnusw34";
			String id = "DatabaseStudy";
			String pass = "tiger";
			con = DriverManager.getConnection(url, id, pass);			
		} catch (Exception e) {
			System.out.println("드라이버 연결 중 예외발생");
			e.printStackTrace();
		} 
	}
	
	public void close() {
		try {
			if (rs != null) rs.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}
}
