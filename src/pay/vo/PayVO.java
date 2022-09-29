package pay.vo;

public class PayVO {
	
    private String payId;
	private String payDate;
	private String paySuc;
	private String merchantUid;
	private String memHp;
	private String memName;
	private String pgProvider;
	
	
	
	public String getpayId() {
		return payId;
	}
	public void setpayId(String orderId) {
		this.payId = orderId;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String isPaySuc() {
		return paySuc;
	}
	public void setPaySuc(String paySuc) {
		this.paySuc = paySuc;
	}
	public String getMerchantUid() {
		return merchantUid;
	}
	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}
	public String getMemHp() {
		return memHp;
	}
	public void setMemHp(String memHp) {
		this.memHp = memHp;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getPgProvider() {
		return pgProvider;
	}
	public void setPgProvider(String pgProvider) {
		this.pgProvider = pgProvider;
	}
	@Override
	public String toString() {
		return "PayVO [payId=" + payId + ", payDate=" + payDate + ", paySuc=" + paySuc + ", merchantUid=" + merchantUid
				+ ", memHp=" + memHp + ", memName=" + memName + ", pgProvider=" + pgProvider + "]";
	}
	
	
}
