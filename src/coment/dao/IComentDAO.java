package coment.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import coment.vo.comentVO;
import qna.vo.qnaVO;

public interface IComentDAO {

	public int insertComent(SqlMapClient smc, comentVO coVO);
	
	
	public int updateComent(SqlMapClient smc, comentVO coVO);
	
	
	public int deleteComent(SqlMapClient smc, int comentNo);
	
	public int delComForQna(SqlMapClient smc, int qnaNo);
	
	
	public List<comentVO> getAllComentList(SqlMapClient smc, int qnaNo);
	
	
	public comentVO getComent(SqlMapClient smc, int comentNo);

}
