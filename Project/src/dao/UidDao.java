package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.UidConnection;
import dto.Uid;
public class UidDao {
	private UidConnection ucon;
	
	public UidDao() {
		ucon = new UidConnection();
	}
	
	public boolean validateUid(Uid uidnumber) {
		boolean flag=false;
		try {
			Connection con = ucon.getCon();
			PreparedStatement ps = con.prepareStatement("select * from uid1 where Uid_No= ?");
			ps.setLong(1, uidnumber.getUidNumber());
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
	
	public Uid selectUid(Uid uidno) {
		Uid m = new Uid();
		try {
			Connection con = ucon.getCon();
			PreparedStatement s = con.prepareStatement("select * from uid1 where Uid_No = ?");
			s.setLong(1, uidno.getUidNumber());
			ResultSet rs = s.executeQuery();
			if(rs.next()) {			
				m.setUidNumber(rs.getLong(1));
				m.setName(rs.getString(2));
				m.setDob(rs.getDate(3));
				m.setGender(rs.getString(4));
				m.setPhone(rs.getLong(5));
				m.setEmailId(rs.getString(6));
				m.setAddress(rs.getString(7));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return m;
	}
}
