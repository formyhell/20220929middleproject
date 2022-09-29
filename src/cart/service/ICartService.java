package cart.service;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import cart.vo.CartVO;

public interface ICartService {
	
	//추가
	public int insertCart(CartVO cv);
	//수정
	public int updateCart(String orderDetailId);
	//삭제
	public int deleteCart(String orderDetailId);
	//전체 조회
	public List<CartVO> getCartAll();
	//주문번호를 이용한 조회
	public List<CartVO> getCartfromOrder(String orderId);
	//강의 아이디를 이용한 조회
	public List<CartVO> getCartfromlecId(String lectureId);
	//검색
	public List<CartVO> searchCartList(CartVO cv);
	
}
