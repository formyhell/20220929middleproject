package lecreview.vo;

public class LecReviewVO {
	
	private int reNum;
	private String lecId;
	private String lecTitle;
	private String reTitle;
	private String reContent;
	private int satisfaction;
	private String reDate;
	private int reCount;
	
	
	
	
	
	public int getReCount() {
		return reCount;
	}
	public void setReCount(int reCount) {
		this.reCount = reCount;
	}
	public String getLecTitle() {
		return lecTitle;
	}
	public void setLecTitle(String lecTitle) {
		this.lecTitle = lecTitle;
	}
	public String getReDate() {
		return reDate;
	}
	public void setReDate(String reDate) {
		this.reDate = reDate;
	}
	public int getReNum() {
		return reNum;
	}
	public void setReNum(int reNum) {
		this.reNum = reNum;
	}
	public String getLecId() {
		return lecId;
	}
	public void setLecId(String lecId) {
		this.lecId = lecId;
	}
	public String getReTitle() {
		return reTitle;
	}
	public void setReTitle(String reTitle) {
		this.reTitle = reTitle;
	}
	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	public int getSatisfaction() {
		return satisfaction;
	}
	public void setSatisfaction(int satisfaction) {
		this.satisfaction = satisfaction;
	}
	
	
	@Override
	public String toString() {
		return "LecReviewVO [reNum=" + reNum + ", lecId=" + lecId + ", lecTitle=" + lecTitle + ", reTitle=" + reTitle
				+ ", reContent=" + reContent + ", satisfaction=" + satisfaction + ", reDate=" + reDate + ", reCount="
				+ reCount + "]";
	}
	
}
