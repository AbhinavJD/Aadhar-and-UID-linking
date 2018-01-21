package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class UidConnection {
private Connection uidcon;
	
	public Connection getCon() {
		try {
			if(uidcon == null || uidcon.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver");
				uidcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/uiddb","root","");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uidcon;
	}
}
