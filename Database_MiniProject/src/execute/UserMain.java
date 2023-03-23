package execute;

import java.sql.SQLException;
import java.util.Scanner;

import user.UserDAO;

public class UserMain {	
	
	public static void main(String[] args) throws SQLException {
		UserDAO dao = new UserDAO();
		int key;
		do {
			System.out.println("(1)insert (2)delete (3)search (4)update (6)printUser (7)printdelUser (0)quit");
			Scanner sc = new Scanner(System.in);
			key = sc.nextInt();
			switch (key) {
				case 1: 
					System.out.println("uid입력 : ");
					String uid = sc.next();
					System.out.println("uname입력 : ");
					String uname = sc.next();
					System.out.println("email입력 : ");
					String email = sc.next();
					dao.insert(uid, uname, email);
					break;
				case 2:
					System.out.println("uid입력 : ");
					String uid1 = sc.next();
					dao.delete(uid1);
					break;
				case 3:
					System.out.println("uid입력 : ");
					String uid2 = sc.next();
					dao.search(uid2);
					break;
				case 4:
					System.out.println("uid입력 : ");
					String uid3 = sc.next();
					System.out.println("uname입력 : ");
					String uname3 = sc.next();
					System.out.println("email입력 : ");
					String email3 = sc.next();
					dao.Update(uid3, uname3, email3);
					break;	
				case 6:
					dao.userPrint();
					break;
				case 7:
					dao.deluserPrint();
					break;				
			}
		} while (key != 0);
			
		dao.close();
	}
}
