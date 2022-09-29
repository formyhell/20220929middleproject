package freeboard.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import freeboard.vo.FreeBoardVO;
import lecreview.vo.LecReviewVO;
import lecture.vo.LectureVO;

public class FreeBoardDAOImpl implements IFreeBoardDAO {

private static IFreeBoardDAO freeBoardDAO;
	
	private FreeBoardDAOImpl() {
		
	}
	
	public static IFreeBoardDAO getInstance() {
		if(freeBoardDAO == null) {
			freeBoardDAO = new FreeBoardDAOImpl();
		}
		return freeBoardDAO;
	}
	
	@Override
	public int insertFreeBoard(SqlMapClient smc, FreeBoardVO fv) {
		int cnt = 0;
		
		try {
			
			cnt = smc.update("freeBoard.insertFreeBoard", fv);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자유게시판 입력 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int updateFreeBoard(SqlMapClient smc, FreeBoardVO fv) {
		
		int cnt = 0;
		
		try {
			
			cnt = smc.update("freeBoard.updateFreeBoard", fv);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자유게시판 수정 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public int deleteFreeBoard(SqlMapClient smc, String freeNum) {
		
		int cnt = 0;
		
		try {
			
			cnt = smc.update("freeBoard.deleteFreeBoard", freeNum);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자유게시판 삭제 중 예외발생!", e);
		}
		return cnt;
	}

	@Override
	public List<FreeBoardVO> getAllFreeBoardList(SqlMapClient smc) {
		
		List<FreeBoardVO> freeBoardList = new ArrayList<FreeBoardVO>();
		
		try {
			
			freeBoardList = smc.queryForList("freeBoard.getFreeBoardAll");
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자유게시판 조회 중 예외발생!", e);
		}
		
		return freeBoardList;
	}


	@Override
	public List<FreeBoardVO> searchFreeBoardList(SqlMapClient smc, FreeBoardVO fv) {
		
		List<FreeBoardVO> freeBoardList = new ArrayList<FreeBoardVO>();
		
		try {
			
			freeBoardList = smc.queryForList("freeBoard.searchFreeBoard", fv);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자유게시판 검색 중 예외 발생!", e);
		}
		
		return freeBoardList;
	}

	@Override
	public FreeBoardVO getFreeBoard(SqlMapClient smc, String freeNum) {
		
		FreeBoardVO fv = null;
		
		try {
			fv = (FreeBoardVO)smc.queryForObject("freeBoard.getFreeBoard", freeNum);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("자유게시판조회 중 예외 발생!", e);
		}
		
		return fv;
	}
}
