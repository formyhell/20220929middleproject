package freeboard.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import freeboard.dao.FreeBoardDAOImpl;
import freeboard.dao.IFreeBoardDAO;
import freeboard.vo.FreeBoardVO;
import lecreview.dao.ILecReviewDAO;
import lecreview.dao.LecReviewDAOImpl;
import lecreview.vo.LecReviewVO;
import lecture.dao.ILectureDAO;
import lecture.dao.LectureDAOImpl;
import lecture.vo.LectureVO;
import util.SqlMapClientFactory;


public class FreeBoardServiceImpl implements IFreeBoardService {

	private static IFreeBoardService freeBoardService;
	
	private SqlMapClient smc;
	
	private IFreeBoardDAO freeBoardDAO;
	
	private FreeBoardServiceImpl() {
		freeBoardDAO = FreeBoardDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IFreeBoardService getinstance() {
		if(freeBoardService == null) {
			freeBoardService = new FreeBoardServiceImpl();
		}
		return freeBoardService;
	}
	
	@Override
	public int insertFreeBoard(FreeBoardVO fv) {
		int cnt = 0;
		
		try {
			
			smc.startTransaction();  // 트랜잭션시작
			
			cnt = freeBoardDAO.insertFreeBoard(smc, fv);
			
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
	public int updateFreeBoard(FreeBoardVO fv) {
		
		return freeBoardDAO.updateFreeBoard(smc, fv);
	}

	@Override
	public int deleteFreeBoard(String freeNum) {
		
		return freeBoardDAO.deleteFreeBoard(smc, freeNum);
	}

	@Override
	public List<FreeBoardVO> getAllFreeBoardList() {
		
		return freeBoardDAO.getAllFreeBoardList(smc);
	}


	@Override
	public List<FreeBoardVO> searchFreeBoardList(FreeBoardVO fv) {
		
		return freeBoardDAO.searchFreeBoardList(smc, fv);
	}
	
	@Override
	public FreeBoardVO getFreeBoard(String freeNum) {
		
		return freeBoardDAO.getFreeBoard(smc, freeNum);
	}
	

}
