package lecreview.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import lecreview.dao.ILecReviewDAO;
import lecreview.dao.LecReviewDAOImpl;
import lecreview.vo.LecReviewVO;
import lecture.dao.ILectureDAO;
import lecture.dao.LectureDAOImpl;
import lecture.vo.LectureVO;
import util.SqlMapClientFactory;


public class LecReviewServiceImpl implements ILecReviewService {

	private static ILecReviewService lecReviewService;
	
	private SqlMapClient smc;
	
	private ILecReviewDAO lecReviewDAO;
	
	private LecReviewServiceImpl() {
		lecReviewDAO = LecReviewDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static ILecReviewService getinstance() {
		if(lecReviewService == null) {
			lecReviewService = new LecReviewServiceImpl();
		}
		return lecReviewService;
	}
	
	@Override
	public int insertLecReview(LecReviewVO rv) {
		int cnt = 0;
		
		try {
			
			smc.startTransaction();  // 트랜잭션시작
			
			cnt = lecReviewDAO.insertLecReview(smc, rv);
			
			smc.commitTransaction();  //  커밋
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				smc.endTransaction();   // 트랜잭션 끝
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
		
		return cnt;
	}

	@Override
	public int updateLecReview(LecReviewVO rv) {
		
		return lecReviewDAO.updateLecReview(smc, rv);
	}

	@Override
	public int deleteLecReview(int reNum) {
		
		return lecReviewDAO.deleteLecReview(smc, reNum);
	}

	@Override
	public List<LecReviewVO> getAllLecReviewList() {
		
		return lecReviewDAO.getAllLecReviewList(smc);
	}


	@Override
	public List<LecReviewVO> searchLecReviewList(LecReviewVO rv) {
		
		return lecReviewDAO.searchLecReviewList(smc, rv);
	}
	
	@Override
	public LecReviewVO getLecReview(int reNum) {
		
		return lecReviewDAO.getLecReview(smc, reNum);
	}

	@Override
	public LecReviewVO getCountLecReview(String lecId) {
		
		return lecReviewDAO.countLecReview(smc, lecId);
	}
	

}
