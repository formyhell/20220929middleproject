package notice.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import notice.vo.noticeVO;
import qna.dao.IQnaDAO;
import qna.dao.qnaDAOImpl;
import qna.vo.qnaVO;

public class noticeDAOImpl implements INoticeDAO {
	
	private static INoticeDAO notiDAO;
	
	private noticeDAOImpl() {
		
	}
	
	public static INoticeDAO getInstance() {
		if(notiDAO == null) {
			notiDAO = new noticeDAOImpl();
		}
		return notiDAO;
	}

	@Override
	public int insertNotice(SqlMapClient smc, noticeVO notiVO) {
		int cnt = 0;
		
		try {
			cnt = smc.update("notice.insertNotice", notiVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateNotice(SqlMapClient smc, noticeVO notiVO) {
		int cnt = 0;
		
		try {
			cnt = smc.update("notice.updateNotice", notiVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	

	@Override
	public int deleteNotice(SqlMapClient smc, int noticeNum) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("notice.deleteNotice", noticeNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public List<noticeVO> getAllNoticeList(SqlMapClient smc) {
		List<noticeVO> noticeList = new ArrayList<noticeVO>();
		
		try {
			noticeList = smc.queryForList("notice.getNoticeAll");

		}catch (SQLException e) {
			e.printStackTrace();
		}
		return noticeList;
	}

	@Override
	public noticeVO getNotice(SqlMapClient smc, int noticeNum) {
		noticeVO notiVO = null;
		
		try {
			
			notiVO = (noticeVO) smc.queryForObject("notice.getNotice", noticeNum);
					
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return notiVO;
	}



	
}
