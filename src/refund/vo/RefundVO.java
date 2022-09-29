package refund.vo;

public class RefundVO {
	
     private String refundId;
	 private int bankCode;
	 private String refundDate;
	 private String reason;
	 private String refundHolder;
	 private int refundAccount;
	 private int refundAmount;
	 private String merchantUid;
	 
	public String getRefundId() {
		return refundId;
	}
	public void setRefundId(String refundId) {
		this.refundId = refundId;
	}
	public int getBankCode() {
		return bankCode;
	}
	public void setBankCode(int bankCode) {
		this.bankCode = bankCode;
	}
	public String getRefundDate() {
		return refundDate;
	}
	public void setRefundDate(String refundDate) {
		this.refundDate = refundDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getRefundHolder() {
		return refundHolder;
	}
	public void setRefundHolder(String refundHolder) {
		this.refundHolder = refundHolder;
	}
	public int getRefundAccount() {
		return refundAccount;
	}
	public void setRefundAccount(int refundAccount) {
		this.refundAccount = refundAccount;
	}
	public int getRefundAmount() {
		return refundAmount;
	}
	public void setRefundAmount(int refundAmount) {
		this.refundAmount = refundAmount;
	}
	public String getMerchantUid() {
		return merchantUid;
	}
	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}
	 
}
