package notice.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import notice.vo.noticeVO;
import qna.vo.qnaVO;

public interface INoticeDAO {

	public int insertNotice(SqlMapClient smc, noticeVO notiVO);
	
	
	public int updateNotice(SqlMapClient smc, noticeVO notiVO);
	
	
	public int deleteNotice(SqlMapClient smc, int noticeNum);
	
	
	public List<noticeVO> getAllNoticeList(SqlMapClient smc);
	
	
	public noticeVO getNotice(SqlMapClient smc, int noticeNum);


}
