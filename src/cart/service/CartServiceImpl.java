package cart.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import cart.dao.CartDAOImpl;
import cart.dao.ICartDAO;
import cart.vo.CartVO;
import pay.dao.IOrderDAO;
import pay.dao.OrderDAOImpl;
import pay.service.IOrderService;
import pay.service.OrderServiceImpl;
import util.SqlMapClientFactory;

public class CartServiceImpl implements ICartService{
	
	private static ICartService service;
	private static ICartDAO dao;
	private SqlMapClient smc;
	
	private CartServiceImpl() {
		dao = CartDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static ICartService getInstance() {
		if(service == null) {
			service = new CartServiceImpl();
		}
		return service;
	}
	
	@Override
	public int insertCart(CartVO cv) {
		int cnt = 0;
		try {
			smc.startTransaction();
			cnt = dao.insertCart(smc, cv);
			smc.commitTransaction();
		} catch (SQLException e) {
			try {
				smc.endTransaction();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}finally {
			try {
				smc.endTransaction();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}

	@Override
	public int updateCart(String orderDetailId) {
		return dao.updateCart(smc, orderDetailId);
	}

	@Override
	public int deleteCart(String orderDetailId) {
		return dao.deleteCart(smc, orderDetailId);
	}

	@Override
	public List<CartVO> getCartAll() {
		return dao.getCartAll(smc);
	}

	@Override
	public List<CartVO> getCartfromOrder(String orderId) {
		return dao.getCartfromOrder(smc, orderId);
	}

	@Override
	public List<CartVO> getCartfromlecId(String lectureId) {
		return dao.getCartfromlecId(smc, lectureId);
	}

	@Override
	public List<CartVO> searchCartList(CartVO cv) {
		return dao.searchCartList(smc,cv);
	}

}
