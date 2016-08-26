package hanbit;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public DBConnect() {}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@192.168.0.119:1521:XE";
		String id = "scott";
		String pass = "tiger";
		
		Connection con = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,id,pass);
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}