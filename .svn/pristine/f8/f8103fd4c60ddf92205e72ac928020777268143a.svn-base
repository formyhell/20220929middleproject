package wishlist.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import qna.dao.IQnaDAO;
import qna.dao.qnaDAOImpl;
import qna.vo.qnaVO;
import util.SqlMapClientFactory;
import wishlist.dao.IWishlistDAO;
import wishlist.dao.wishlistDAOImpl;
import wishlist.vo.wishlistVO;

public class wishlistServiceImpl implements IWishlistService {
	
	private IWishlistDAO wishDAO;
	private SqlMapClient smc;
	
	private static IWishlistService wishService;
	
	private wishlistServiceImpl() {
		wishDAO = wishlistDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IWishlistService getInstance() {
		if(wishService == null) {
			wishService = new wishlistServiceImpl();
		}
		return wishService;
	}

	
	@Override
	public int insertWishlist(wishlistVO wishVO) {
		int cnt = 0;
		
		try {
			smc.startTransaction(); // 트랜잭션 시작
			cnt = wishDAO.insertWishlist(smc, wishVO);
			
			smc.commitTransaction(); // 커밋
			
		} catch (Exception e) {
			try {
				smc.endTransaction();// 롤백(커밋 없이 엔드)
			} catch (SQLException e1) {
				e1.printStackTrace();
			} 
			e.printStackTrace();
		} finally {
			try {
				smc.endTransaction(); // 트랜잭션 끝
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return cnt;
	}

	@Override
	public int deleteWishlist(String memMail) {
		return wishDAO.deleteWishlist(smc, memMail);
	}

	@Override
	public List<wishlistVO>  getWishlist(String memMail) {
		return wishDAO.getWishlist(smc, memMail);
	}

}
