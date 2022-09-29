package coment.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import coment.dao.IComentDAO;
import coment.dao.comentDAOImpl;
import coment.vo.comentVO;
import util.SqlMapClientFactory;

public class comentServiceImpl implements IComentService {
	private IComentDAO coDAO;
	private SqlMapClient smc;
	private static IComentService coService;
	
	public comentServiceImpl() {
		smc = SqlMapClientFactory.getInstance();
		coDAO = comentDAOImpl.getInstance();
	}
	
	public static IComentService getInstance() {
		if(coService == null) {
			coService = new comentServiceImpl();
		}
		return coService;
	}

	@Override
	public int insertComent(comentVO coVO) {
		int cnt = 0;
		
		try {
			smc.startTransaction(); // 트랜잭션 시작
			cnt = coDAO.insertComent(smc, coVO);
			
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
	public int updateComent(comentVO coVO) {
		return coDAO.updateComent(smc, coVO);
	}

	@Override
	public int deleteComent(int comentNo) {
		return coDAO.deleteComent(smc, comentNo);
	}
	
	@Override
	public int delComForQna(int qnaNo) {
		return coDAO.delComForQna(smc, qnaNo);
	}

	@Override
	public List<comentVO> getAllComentList(int qnaNo) {
		return coDAO.getAllComentList(smc, qnaNo);
	}

	@Override
	public comentVO getComent(int comentNo) {
		return coDAO.getComent(smc, comentNo);
	}

	


}
