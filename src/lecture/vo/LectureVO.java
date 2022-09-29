package lecture.vo;

public class LectureVO {
	
	private String lecId;
	private String lecTitle;
	private int lecPrice;
	private String lecIntro;
	private String lecCurri;
	private String instructorId;
	private String scategoryId;
	private String scategoryName;
	private String memMail;
	private String approve;
	
	
	
	
	
	public String getScategoryName() {
		return scategoryName;
	}
	public void setScategoryName(String scategoryName) {
		this.scategoryName = scategoryName;
	}
	public String getApprove() {
		return approve;
	}
	public void setApprove(String approve) {
		this.approve = approve;
	}
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	private long atchFileId = -1;
	
	public long getAtchFileId() {
		return atchFileId;
	}
	public void setAtchFileId(long atchFileId) {
		this.atchFileId = atchFileId;
	}
	public String getLecId() {
		return lecId;
	}
	public void setLecId(String lecId) {
		this.lecId = lecId;
	}
	public String getLecTitle() {
		return lecTitle;
	}
	public void setLecTitle(String lecTitle) {
		this.lecTitle = lecTitle;
	}
	public int getLecPrice() {
		return lecPrice;
	}
	public void setLecPrice(int lecPrice) {
		this.lecPrice = lecPrice;
	}
	public String getLecIntro() {
		return lecIntro;
	}
	public void setLecIntro(String lecIntro) {
		this.lecIntro = lecIntro;
	}
	public String getLecCurri() {
		return lecCurri;
	}
	public void setLecCurri(String lecCurri) {
		this.lecCurri = lecCurri;
	}
	public String getInstructorId() {
		return instructorId;
	}
	public void setInstructorId(String instructorId) {
		this.instructorId = instructorId;
	}
	public String getScategoryId() {
		return scategoryId;
	}
	public void setScategoryId(String scategoryId) {
		this.scategoryId = scategoryId;
	}
	@Override
	public String toString() {
		return "LectureVO [lecId=" + lecId + ", lecTitle=" + lecTitle + ", lecPrice=" + lecPrice + ", lecIntro="
				+ lecIntro + ", lecCurri=" + lecCurri + ", instructorId=" + instructorId + ", scategoryId="
				+ scategoryId + ", scategoryName=" + scategoryName + ", memMail=" + memMail + ", approve=" + approve
				+ ", atchFileId=" + atchFileId + "]";
	}
	
	
	
	
	
	

}
