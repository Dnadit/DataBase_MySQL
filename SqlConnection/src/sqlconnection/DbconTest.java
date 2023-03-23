package sqlconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbconTest {
	
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("JDBC드라이버 로딩 오류");
			e.printStackTrace();
			return;
		}
		Connection con = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db0220", "DatabaseStudy", "tiger");
			psmt = con.prepareStatement("select * from book");
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String bookname = rs.getString("bookname");
				String publisher = rs.getString("publisher");				
				System.out.println("도서명: " + bookname + ", 출판사: " + publisher);
			}
		} catch (SQLException e) {
			System.out.println("DB 연결 오류");
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				psmt.close();
				con.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
	}
}
