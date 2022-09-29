package qna.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import qna.dao.IQnaDAO;
import qna.dao.qnaDAOImpl;
import qna.vo.qnaVO;
import util.SqlMapClientFactory;

public class qnaServiceImpl implements IQnaService{
	
	private IQnaDAO qnaDAO;
	private SqlMapClient smc;
	
	private static IQnaService qnaService;
	
	private qnaServiceImpl() {
		qnaDAO = qnaDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IQnaService getInstance() {
		if(qnaService == null) {
			qnaService = new qnaServiceImpl();
		}
		return qnaService;
	}

	
	@Override
	public int insertQna(qnaVO qv) {
		int cnt = 0;
		
		try {
			smc.startTransaction(); // 트랜잭션 시작
			cnt = qnaDAO.insertQna(smc, qv);
			
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
	public int updateQna(qnaVO qv) {
		return qnaDAO.updateQna(smc, qv);
	}

	@Override
	public int deleteQna(int qnaNo) {
		return qnaDAO.deleteQna(smc, qnaNo);
	}

	@Override
	public List<qnaVO> getAllQnaList() {
		
		return qnaDAO.getAllQnaList(smc);
	}

	@Override
	public List<qnaVO> searchQnaList(String qnaTitle) {
		return qnaDAO.searchQnaList(smc, qnaTitle);
	}

	@Override
	public qnaVO getQna(int qnaNo) {
		return qnaDAO.getQna(smc, qnaNo);
	}

	@Override
	public List<qnaVO> moreQna(String lectureId) {
		return qnaDAO.moreQna(smc, lectureId);
	}

	@Override
	public List<qnaVO> lectureQnaList(String lecId) {
		return qnaDAO.lectureQnaList(smc, lecId);
	}

}
