package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.CbseConnection;
import dto.TenthAcademic;

public class cbsesscdao {

		private CbseConnection cbsecon;
		
		public cbsesscdao() {
			cbsecon=new CbseConnection();
		}
		public cbsesscdao(CbseConnection cbsecon) {
			cbsecon=new CbseConnection();
		}

		public boolean validateSSCdetails(TenthAcademic ta) {
			boolean flag=false;
			try {
				//System.out.println("Mrskheet"+ta.getMarksheetNo());
				//System.out.println(ta.getRollNumber());
				Connection con = cbsecon.getCon();
				PreparedStatement ps = con.prepareStatement("select * from ssc where Marksheet_No = ? and Roll_NO= ?");
				ps.setLong(1,ta.getMarksheetNo());
				ps.setLong(2, ta.getRollNumber());
				ResultSet rs = ps.executeQuery();
				//System.out.println(ta.getRollNumber());
				if(rs.next()) {
					flag=true;
				}
				//System.out.println(ta.getRollNumber());
				con.close();			
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return flag;
		}
	}
