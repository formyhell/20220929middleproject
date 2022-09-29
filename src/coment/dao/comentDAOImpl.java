package coment.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import coment.vo.comentVO;




public class comentDAOImpl implements IComentDAO {
	
	private static IComentDAO coDAO;
	
	private comentDAOImpl() {
		
	}
	
	public static IComentDAO getInstance() {
		if(coDAO == null) {
			coDAO = new comentDAOImpl();
		}
		return coDAO;
	}

	@Override
	public int insertComent(SqlMapClient smc, comentVO coVO) {
		int cnt = 0;
		
		try {
			cnt = smc.update("coment.insertComent", coVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateComent(SqlMapClient smc, comentVO coVO) {
		int cnt = 0;
		
		try {
			cnt = smc.update("coment.updateComent", coVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	

	@Override
	public int deleteComent(SqlMapClient smc, int comentNo) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("coment.deleteComent", comentNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	@Override
	public int delComForQna(SqlMapClient smc, int qnaNo) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("coment.delComForQna", qnaNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public List<comentVO> getAllComentList(SqlMapClient smc, int qnaNo) {
		List<comentVO> comentList = new ArrayList<comentVO>();
		
		try {
			comentList = smc.queryForList("coment.getComentAll", qnaNo);

		}catch (SQLException e) {
			e.printStackTrace();
		}
		return comentList;
	}

	@Override
	public comentVO getComent(SqlMapClient smc, int comentNo) {
		comentVO coVO = null;
		
		try {
			
			coVO = (comentVO) smc.queryForObject("coment.getComent", comentNo);
					
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return coVO;
	}

	



	
}
