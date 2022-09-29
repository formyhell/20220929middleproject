package pay.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import pay.vo.PayVO;

public interface IPayDAO {
	
	//추가
	public int insertPay(SqlMapClient smc, PayVO pv);
	//수정 (환불 : 결제테이블 PAY_SUC F로 수정)
	public int refundPay(SqlMapClient smc, String refundId);
	//전체 조회
	public List<PayVO> getAllPayList(SqlMapClient smc);
	//유무
	public boolean checkPay(SqlMapClient smc, String payId);
	//주문번호를 통한 조회
	public PayVO getPay(SqlMapClient smc, String payId);
	//검색
	public List<PayVO> searchPayList(SqlMapClient smc, PayVO pv);

}
