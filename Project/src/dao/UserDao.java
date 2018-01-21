package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.MyConnection;
import dto.User;

public class UserDao {
	private MyConnection mcon;

	public UserDao() {
		mcon = new MyConnection();
	}
	
	public boolean validateUser(User user) {
		boolean flag=false;
		try {
			Connection con = mcon.getCon();
			PreparedStatement ps = con.prepareStatement("select * from users where Email_Id = ? and Password = ?");
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			con.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public int addUser(User user) {
		int i=0;
		try {
			Connection con = mcon.getCon();
			PreparedStatement ps = con.prepareStatement("insert into users values(?,?)");
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			i = ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
}
