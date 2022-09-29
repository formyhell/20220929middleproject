package lecture.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import lecture.dao.ILectureDAO;
import lecture.dao.LectureDAOImpl;
import lecture.vo.LectureVO;
import util.SqlMapClientFactory;


public class LectureServiceImpl implements ILectureService {

	private static ILectureService lecService;
	
	private SqlMapClient smc;
	
	private ILectureDAO lecDAO;
	
	private LectureServiceImpl() {
		lecDAO = LectureDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static ILectureService getinstance() {
		if(lecService == null) {
			lecService = new LectureServiceImpl();
		}
		return lecService;
	}
	
	@Override
	public int insertLecture(LectureVO lv) {
		int cnt = 0;
		
		try {
			
			smc.startTransaction();  // 트랜잭션시작
			
			cnt = lecDAO.insertLecture(smc, lv);
			
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
	public int updateLecture(LectureVO lv) {
		
		return lecDAO.updateLecture(smc, lv);
	}
	
	@Override
	public int updateApprove(LectureVO lv) {
		
		return lecDAO.updateApprove(smc, lv);
	}

	@Override
	public int deleteLecture(String lecId) {
		
		return lecDAO.deleteLecture(smc, lecId);
	}

	@Override
	public List<LectureVO> getAllLectureList() {
		
		return lecDAO.getAllLectureList(smc);
	}
	@Override
	public List<LectureVO> getAllLectureList2() {
		
		return lecDAO.getAllLectureList2(smc);
	}
	
	@Override
	public List<LectureVO> getAllYesLectureList(String approve) {
		
		return lecDAO.getAllYesLectureList(smc, approve);
	}
	
	@Override
	public List<LectureVO> getAllNoLectureList(String approve) {
		
		return lecDAO.getAllNoLectureList(smc, approve);
	}


	@Override
	public boolean checkLecture(String lecId) {
		
		return lecDAO.checkLecture(smc, lecId);
	}

	@Override
	public List<LectureVO> searchLectureList(LectureVO lv) {
		
		return lecDAO.searchLectureList(smc, lv);
	}
	
	@Override
	public LectureVO getLecture(String lecId) {
		
		return lecDAO.getLecture(smc, lecId);
	}
	@Override
	public LectureVO getLecture2(String lecId) {
		
		return lecDAO.getLecture2(smc, lecId);
	}

	@Override
	public List<LectureVO> getCateLectureList() {
		
		return lecDAO.getCateLectureList(smc);
	}
	

}
