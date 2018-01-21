package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CbseConnection {
private Connection cbsecon;
	
	public Connection getCon() {
		try {
			if(cbsecon == null || cbsecon.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver");
				cbsecon = DriverManager.getConnection("jdbc:mysql://localhost:3306/cbse","root","12345");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cbsecon;
	}
}
