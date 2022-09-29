package pay.dao;

import java.util.List;
import com.ibatis.sqlmap.client.SqlMapClient;

import cart.vo.CartVO;
import member.vo.MemberVO;
import pay.vo.OrderVO;

public interface IOrderDAO {

	//추가
	public long insertOrder(SqlMapClient smc, OrderVO pv);
	//수정
	public int updateOrder(SqlMapClient smc, OrderVO pv);
	//삭제
	public int deleteOrder(SqlMapClient smc, String orderId);
	//전체 조회
	public List<OrderVO> getAllOrderList(SqlMapClient smc);
	//유무
	public boolean checkOrder(SqlMapClient smc, String orderId);
	//주문번호를 통한 조회
	public OrderVO getOrder(SqlMapClient smc, String memMail);
	//검색
	public List<OrderVO> searchOrderList(SqlMapClient smc, OrderVO pv);
	//내 학습ID 가져오기
	public List<String> getClass(SqlMapClient smc, String memMail);
	
	
}
