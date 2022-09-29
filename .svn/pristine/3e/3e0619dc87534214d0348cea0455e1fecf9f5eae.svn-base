package cart.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import cart.vo.CartVO;

public class CartDAOImpl implements ICartDAO {
	
	private static ICartDAO dao;
	
	private CartDAOImpl() {
	}
	
	public static ICartDAO getInstance() {
		if(dao == null) {
			dao = new CartDAOImpl();
		}
		return dao;
	}
	
	@Override
	public int insertCart(SqlMapClient smc, CartVO cv) {
		int cnt = 0;
		try {
			cnt = smc.update("orderDetail.insertCart",cv);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Cart SQL입력오류!!!", e);
		}
		return cnt;
	}

	@Override
	public int updateCart(SqlMapClient smc, String orderDetailId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCart(SqlMapClient smc, String orderDetailId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CartVO> getCartAll(SqlMapClient smc) {
		List<CartVO> cartList = new ArrayList<CartVO>();
		
		try {
			cartList = smc.queryForList("orderDetail.getCartAll");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Cart SQL전체출력 오류!!!", e);
		}
		
		return cartList;
	}

	@Override
	public List<CartVO> getCartfromOrder(SqlMapClient smc, String orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CartVO> getCartfromlecId(SqlMapClient smc, String lectureId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CartVO> searchCartList(SqlMapClient smc, CartVO cv) {
		// TODO Auto-generated method stub
		return null;
	}

}
