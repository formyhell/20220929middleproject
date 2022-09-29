package notice.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import notice.dao.INoticeDAO;
import notice.dao.noticeDAOImpl;
import notice.vo.noticeVO;
import util.SqlMapClientFactory;

public class noticeServiceImpl implements INoticeService {

	private INoticeDAO notiDAO;
	private SqlMapClient smc;
	private static INoticeService notiService;
	
	public noticeServiceImpl() {
		smc = SqlMapClientFactory.getInstance();
		notiDAO = noticeDAOImpl.getInstance();
	}
	
	public static INoticeService getInstance() {
		if(notiService == null) {
			notiService = new noticeServiceImpl();
		}
		return notiService;
	}

	@Override
	public int insertNotice(noticeVO notivo) {
		int cnt = 0;
		
		try {
			smc.startTransaction(); // 트랜잭션 시작
			cnt = notiDAO.insertNotice(smc, notivo);
			
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
	public int updateNotice(noticeVO notivo) {
		return notiDAO.updateNotice(smc, notivo);
	}

	@Override
	public int deleteNotice(int noticeNum) {
		return notiDAO.deleteNotice(smc, noticeNum);
	}

	@Override
	public List<noticeVO> getAllNoticeList() {
		return notiDAO.getAllNoticeList(smc);
	}

	@Override
	public noticeVO getNotice(int noticeNum) {
		return notiDAO.getNotice(smc, noticeNum);
	}

}
