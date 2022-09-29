package pay.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import cart.vo.CartVO;
import pay.vo.OrderVO;

public interface IOrderService {
	
	//추가
	public long insertOrder(OrderVO pv);
	//수정
	public int updateOrder(OrderVO pv);
	//삭제
	public int deleteOrder(String orderId);
	//전체 조회
	public List<OrderVO> getAllOrderList();
	//유무
	public boolean checkOrder(String orderId);
	//주문번호를 통한 조회
	public OrderVO getOrder(String orderId);
	//검색
	public List<OrderVO> searchOrderList(OrderVO pv);
	//내 학습ID 가져오기
	public List<String> getClass(String memMail);
}
