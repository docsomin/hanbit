package hanbit;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public DBConnect() {}
	
	public Connection getConnection() {
		String url = "jdbc:mysql://104.197.193.198:3306/hanbit";
		String id = "scott";
		String pass = "tiger";
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pass);
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}