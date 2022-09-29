package member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.ibatis.sqlmap.client.SqlMapClient;
import member.vo.MemberVO;


public class MemberDAOImpl implements IMemberDAO {
	
	private static IMemberDAO memDAO;
	
	private MemberDAOImpl() {

	}
	
	public static IMemberDAO getInstance() {
		if(memDAO == null) {
			memDAO = new MemberDAOImpl();
		}
		
		return memDAO;
	}

	@Override
	public int insertMember(SqlMapClient smc, MemberVO mv) {

		int cnt = 0;

		try {
			cnt = smc.update("member.insertMember", mv);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 입력 중 예외발생!", ex);
		}

		return cnt; // cnt가 return 값이므로
	}

	@Override
	public int updateMember(SqlMapClient smc, MemberVO mv) {
		
		int cnt = 0;
		
		try {
			cnt = smc.update("member.updateMember", mv);
			
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 수정 중 예외 발생!", ex);
		} 
		return cnt;
	}

	@Override
	public int deleteMember(SqlMapClient smc, String memId) {
		
		int cnt = 0;
		
		try {
			cnt = smc.delete("member.deleteMember", memId);
		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 삭제 중 예외발생!", ex);
		} 
		
		return cnt;
	}

	@Override
	public List<MemberVO> getAllMemberList(SqlMapClient smc) {
		
		List<MemberVO> memList = new ArrayList<MemberVO>();
		
		try {
			
			memList = smc.queryForList("member.getMemberAll");

		} catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("전체 회원정보 조회 중 예외 발생!", ex);
		} 
		return memList;
	}

	@Override
	public boolean checkMember(SqlMapClient smc, String memId) {
		
		boolean chk = false; // 회원 존재여부 체크

		try {
			
			int cnt = (int)smc.queryForObject("member.checkMember", memId); //object값이기 때문에 (int)로 캐스팅

			if (cnt > 0) { // 중복이 존재함.
				chk = true;
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 중복 체크 중 예외 발생!", ex);
		} 
		return chk;
	}

	@Override
	public List<MemberVO> searchMemberList(SqlMapClient smc, MemberVO mv) {
		
		List<MemberVO> memList = new ArrayList<MemberVO>();
		
		try {
			
			memList = smc.queryForList("member.searchMember", mv);
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 검색 중 예외 발생!", ex);
		}
		
		return memList;
	}

	@Override
	public MemberVO getMember(SqlMapClient smc, String memId) {
		
		MemberVO mv = null;
		
			try {
			
			mv = (MemberVO)smc.queryForObject("member.getMember", memId); //object값이기 때문에 (int)로 캐스팅

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 조회 중 예외 발생!", ex);
		} 
		
		return mv;
	}

	@Override
	public MemberVO memberLogin(SqlMapClient smc, String memMail, String memPw) {
		MemberVO mv = new MemberVO();
		
		mv.setMemMail(memMail);
		mv.setMemPw(memPw);
		
		try {
		
		mv = (MemberVO)smc.queryForObject("member.loginMember", mv); //object값이기 때문에 (int)로 캐스팅

	} catch (SQLException ex) {
		ex.printStackTrace();
		throw new RuntimeException("로그인 정보 확인 중 예외 발생!", ex);
	} 
	
	return mv;
	}
	
	
	@Override
	public MemberVO checkYN(SqlMapClient smc, String memMail) {
		
		MemberVO mv = null;
		
			try {
			
			mv = (MemberVO)smc.queryForObject("member.checkYN", memMail); //object값이기 때문에 (int)로 캐스팅

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 조회 중 예외 발생!", ex);
		} 
		
		return mv;
	}
	

}