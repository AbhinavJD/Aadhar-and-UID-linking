package dto;

public class cbsessc {
	private int rollNo;
	private int marksheetNo;
	private String name;
	private String fatherName;
	private String motherName;
	private String issueDate;
	private int obatainedMarks;
	private int totalMarks;
	
	public cbsessc() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cbsessc(int rollNo, int marksheetNo, String name, String fatherName, String motherName, String issueDate,
			int obatainedMarks, int totalMarks) {
		super();
		this.rollNo = rollNo;
		this.marksheetNo = marksheetNo;
		this.name = name;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.issueDate = issueDate;
		this.obatainedMarks = obatainedMarks;
		this.totalMarks = totalMarks;
	}
	public long getRollNo() {
		return rollNo;
	}
	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}
	public long getMarksheetNo() {
		return marksheetNo;
	}
	public void setMarksheetNo(int marksheetNo) {
		this.marksheetNo = marksheetNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public int getObatainedMarks() {
		return obatainedMarks;
	}
	public void setObatainedMarks(int obatainedMarks) {
		this.obatainedMarks = obatainedMarks;
	}
	public int getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}
	public String toString() {
		return "cbsessc [rollNo=" + rollNo + ", marksheetNo=" + marksheetNo + ", name=" + name + ", fatherName="
				+ fatherName + ", motherName=" + motherName + ", issueDate=" + issueDate + ", obatainedMarks="
				+ obatainedMarks + ", totalMarks=" + totalMarks + "]";
	}
	
	
}
