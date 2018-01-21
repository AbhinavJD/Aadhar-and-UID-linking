package dto;

import java.util.Date;

public class Uid {
	private long uidNumber;
	private String name;
	private Date dob;
	private String gender;
	private long phone;
	private String emailId;
	private String address;
	

	public Uid(long uidNumber) {
		super();
		this.uidNumber = uidNumber;
	}
	

	public Uid() {
		
	}
	
	public long getUidNumber() {
		return uidNumber;
	}

	public void setUidNumber(long uidNumber) {
		this.uidNumber = uidNumber;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public long getPhone() {
		return phone;
	}


	public void setPhone(long phone) {
		this.phone = phone;
	}


	public String getEmailId() {
		return emailId;
	}


	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
