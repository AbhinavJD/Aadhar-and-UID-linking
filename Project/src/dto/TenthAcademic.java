package dto;

public class TenthAcademic {
		private String board;
		private int marksheetNo;
		private int rollNumber;
		public TenthAcademic() {
			super();
			// TODO Auto-generated constructor stub
		}
		public TenthAcademic(String board, int marksheetNo, int rollNumber) {
			super();
			this.board = board;
			this.marksheetNo = marksheetNo;
			this.rollNumber = rollNumber;
		}
		public String getBoard() {
			return board;
		}
		public void setBoard(String board) {
			this.board = board;
		}
		public int getMarksheetNo(){
			return marksheetNo;
		}
		public void setMarksheetNo(int marksheetNo) {
			this.marksheetNo = marksheetNo;
		}
		public int getRollNumber(){
			return rollNumber;
		}
		public void setRollNumber(int rollNumber) {
			this.rollNumber = rollNumber;
		}
		public String toString() {
			return "TenthAcademic [board=" + board + ", marksheetNo=" + marksheetNo + ", rollNumber=" + rollNumber
					+ "]";
		}
		
		
}
