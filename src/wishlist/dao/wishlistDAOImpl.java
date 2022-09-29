package wishlist.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

import com.ibatis.sqlmap.client.SqlMapClient;

import qna.vo.qnaVO;
import wishlist.vo.wishlistVO;

public class wishlistDAOImpl implements IWishlistDAO{
	
	private static IWishlistDAO wishDAO;
	
	private wishlistDAOImpl() {
		
	}
	public static IWishlistDAO getInstance() {
		if(wishDAO == null) {
			wishDAO = new wishlistDAOImpl();
		}
		return wishDAO;
	}

	@Override
	public int insertWishlist(SqlMapClient smc, wishlistVO wishVO) {
		int cnt = 0;
		
		try {
			cnt = smc.update("wishlist.insertWishlist", wishVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteWishlist(SqlMapClient smc, String memMail) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("wishlist.deleteWishlist", memMail);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("문의글 삭제 실패", e);
		}
		
		return cnt;
	}
	

	@Override
	public List<wishlistVO> getWishlist(SqlMapClient smc, String memMail) {
		List<wishlistVO> wishlist = new ArrayList<wishlistVO>();
		
		try {
			wishlist = smc.queryForList("wishlist.getWishlist");

		}catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("위시리스트 조회중 예외 발생", e);
		}
		
		return wishlist;
	}



}
