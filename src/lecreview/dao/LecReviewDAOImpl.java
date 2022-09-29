package lecreview.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import lecreview.vo.LecReviewVO;
import lecture.vo.LectureVO;

public class LecReviewDAOImpl implements ILecReviewDAO {

private static ILecReviewDAO lecReviewDAO;
	
	private LecReviewDAOImpl() {
		
	}
	
	public static ILecReviewDAO getInstance() {
		if(lecReviewDAO == null) {
			lecReviewDAO = new LecReviewDAOImpl();
		}
		return lecReviewDAO;
	}
	
	@Override
	public int insertLecReview(SqlMapClient smc, LecReviewVO rv) {
		int cnt = 0;
		
		try {
			
			cnt = smc.update("lecReview.insertLecReview", rv);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보 입력 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int updateLecReview(SqlMapClient smc, LecReviewVO rv) {
		
		int cnt = 0;
		
		try {
			
			cnt = smc.update("lecReview.updateLecReview", rv);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보 수정 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int deleteLecReview(SqlMapClient smc, int reNum) {
		
		int cnt = 0;
		
		try {
			
			cnt = smc.update("lecReview.deleteLecReview", reNum);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보 삭제 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public List<LecReviewVO> getAllLecReviewList(SqlMapClient smc) {
		
		List<LecReviewVO> lecReviewList = new ArrayList<LecReviewVO>();
		
		try {
			
			lecReviewList = smc.queryForList("lecReview.getLecReviewAll");
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보 조회 중 예외발생!", e);
		}
		
		return lecReviewList;
	}


	@Override
	public List<LecReviewVO> searchLecReviewList(SqlMapClient smc, LecReviewVO rv) {
		
		List<LecReviewVO> lecReviewList = new ArrayList<LecReviewVO>();
		
		try {
			
			lecReviewList = smc.queryForList("lecReview.searchLecReview", rv);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보 검색 중 예외 발생!", e);
		}
		
		return lecReviewList;
	}

	@Override
	public LecReviewVO getLecReview(SqlMapClient smc, int reNum) {
		
		LecReviewVO rv = null;
		
		try {
			rv = (LecReviewVO)smc.queryForObject("lecReview.getLecReview", reNum);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보조회 중 예외 발생!", e);
		}
		
		return rv;
	}

	@Override
	public LecReviewVO countLecReview(SqlMapClient smc, String lecId) {
		
		LecReviewVO rv = null;
		
		try {
			rv = (LecReviewVO)smc.queryForObject("lecReview.getLecReview", lecId);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("강의정보조회 중 예외 발생!", e);
		}
		
		return rv;
		
	}
}
