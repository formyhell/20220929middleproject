package pay.vo;

public class OrderVO {
	
    private String orderId;
	private String orderDate;
	private int orderPrice;
	private String memMail;
	
	private String lectureId;
	private String instructorId;
	private String lecTitle;
	private int lecPrice;

	
	
	
	public String getLectureId() {
		return lectureId;
	}
	public void setLectureId(String lectureId) {
		this.lectureId = lectureId;
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
	public int getLecPrice() {
		return lecPrice;
	}
	public void setLecPrice(int lecPrice) {
		this.lecPrice = lecPrice;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	
}
