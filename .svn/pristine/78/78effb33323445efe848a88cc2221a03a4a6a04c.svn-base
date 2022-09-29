package memberTeacher.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.ibatis.sqlmap.client.SqlMapClient;
import member.vo.MemberVO;
import memberTeacher.vo.MemberTeacherVO;
import pay.vo.PayVO;


public class MemberTeacherDAOImpl implements IMemberTeacherDAO {
	
	private static IMemberTeacherDAO memDAO;
	
	private MemberTeacherDAOImpl() {

	}
	
	public static IMemberTeacherDAO getInstance() {
		if(memDAO == null) {
			memDAO = new MemberTeacherDAOImpl();
		}
		
		return memDAO;
	}

	@Override
	public int insertMemberTeacher(SqlMapClient smc, MemberTeacherVO mtv) {

		int cnt = 0;

		try {
			cnt = smc.update("teacher.insertTeacher", mtv);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("회원정보 입력 중 예외발생!", ex);
		}

		return cnt; // cnt가 return 값이므로
	}

	@Override
	public String getTeacherId(SqlMapClient smc, String memMail) {
		String mtId = "";
		try {
			mtId = (String) smc.queryForObject("teacher.getTeacherId",memMail);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Pay 정보조회중 오류발생!!", e);
		}
		return mtId;
	}


	

}