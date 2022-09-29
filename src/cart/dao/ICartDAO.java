package cart.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import cart.vo.CartVO;

public interface ICartDAO {
	
	//추가
	public int insertCart(SqlMapClient smc, CartVO cv);
	//수정
	public int updateCart(SqlMapClient smc, String orderDetailId);
	//삭제
	public int deleteCart(SqlMapClient smc, String orderDetailId);
	//전체 조회
	public List<CartVO> getCartAll(SqlMapClient smc);
	//주문번호를 이용한 조회
	public List<CartVO> getCartfromOrder(SqlMapClient smc, String orderId);
	//강의 아이디를 이용한 조회
	public List<CartVO> getCartfromlecId(SqlMapClient smc, String lectureId);
	//검색
	public List<CartVO> searchCartList(SqlMapClient smc, CartVO cv);
}
