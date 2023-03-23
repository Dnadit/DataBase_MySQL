package user;

import java.sql.SQLException;

import common.UserJDBC;

public class UserDAO extends UserJDBC {
	public UserDAO() {
		super();
	}
	
	public void insert(String uid, String uname, String email) throws SQLException {
		String query = "call insertUser(?,?,?)";		
		psmt = con.prepareCall(query);
		psmt.setString(1, uid);
		psmt.setString(2, uname);
		psmt.setString(3, email);
		rs = psmt.executeQuery();
		System.out.println("Insert 성공");
	}
	
	public void delete(String uid) throws SQLException {
		String query = "call deleteUser(?)";
		psmt = con.prepareCall(query);
		psmt.setString(1, uid);
		rs = psmt.executeQuery();
		System.out.println("Delete 성공");
	}
	
	public void search(String uid) throws SQLException {
		String query = "call searchUser(?)";
		psmt = con.prepareCall(query);
		psmt.setString(1, uid);
		rs = psmt.executeQuery();
		System.out.println("Search 성공");
	}
	
	public void Update(String uid, String uname, String email) throws SQLException {		
		String query = "call updateUser(?,?,?)";
		psmt = con.prepareCall(query);
		psmt.setString(1, uid);
		psmt.setString(2, uname);
		psmt.setString(3, email);
		rs = psmt.executeQuery();
		System.out.println("Update 성공");
	}
	
	public void userPrint() throws SQLException {
		String query = "select * from user";
		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()) {
			System.out.println("user==================================");
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));			
		}
	}
	
	public void deluserPrint() throws SQLException {
		String query = "select * from deluser";
		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		while(rs.next()) {
			System.out.println("deluser==================================");
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));			
		}
	}
	
}
