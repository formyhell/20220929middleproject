package wishlist.vo;

import java.util.Date;

public class wishlistVO {
	private String lectureId;
	private String memMail;
	private String scategoryName;
	private String instructorId;
	private String lecTitle;
	private String lecPrice;
	
	
	
	public String getScategoryName() {
		return scategoryName;
	}
	public void setScategoryName(String scategoryName) {
		this.scategoryName = scategoryName;
	}
	public String getInstructorId() {
		return instructorId;
	}
	public void setInstructorId(String instructorId) {
		this.instructorId = instructorId;
	}
	public String getLecTitle() {
		return lecTitle;
	}
	public void setLecTitle(String lecTitle) {
		this.lecTitle = lecTitle;
	}
	public String getLecPrice() {
		return lecPrice;
	}
	public void setLecPrice(String lecPrice) {
		this.lecPrice = lecPrice;
	}
	public String getLectureId() {
		return lectureId;
	}
	public void setLectureId(String lectureId) {
		this.lectureId = lectureId;
	}
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	
	
}
