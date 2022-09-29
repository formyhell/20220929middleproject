package freeboard.vo;

public class FreeBoardVO {
	
	private String freeNum;
	private String freeTitle;
	private String freeContent;
	private String freeDate;
	private int freeHits;
	private String memMail;
	
	public String getFreeNum() {
		return freeNum;
	}
	public void setFreeNum(String freeNum) {
		this.freeNum = freeNum;
	}
	public String getFreeTitle() {
		return freeTitle;
	}
	public void setFreeTitle(String freeTitle) {
		this.freeTitle = freeTitle;
	}
	public String getFreeContent() {
		return freeContent;
	}
	public void setFreeContent(String freeContent) {
		this.freeContent = freeContent;
	}
	public String getFreeDate() {
		return freeDate;
	}
	public void setFreeDate(String freeDate) {
		this.freeDate = freeDate;
	}
	public int getFreeHits() {
		return freeHits;
	}
	public void setFreeHits(int freeHits) {
		this.freeHits = freeHits;
	}
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	
	@Override
	public String toString() {
		return "FreeBoardVO [freeNum=" + freeNum + ", freeTitle=" + freeTitle + ", freeContent=" + freeContent
				+ ", freeDate=" + freeDate + ", freeHits=" + freeHits + ", memMail=" + memMail + "]";
	}
	
	

}
