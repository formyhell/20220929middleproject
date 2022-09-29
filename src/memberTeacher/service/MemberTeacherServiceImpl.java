package memberTeacher.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import member.dao.IMemberDAO;
import member.dao.MemberDAOImpl;
import member.vo.MemberVO;
import memberTeacher.dao.IMemberTeacherDAO;
import memberTeacher.dao.MemberTeacherDAOImpl;
import memberTeacher.vo.MemberTeacherVO;
import util.SqlMapClientFactory;

public class MemberTeacherServiceImpl implements IMemberTeacherService{
	
	private static IMemberTeacherService memTeachService;
	// 인터페이스로 코딩하는 게 좋은 습관임
	
	private SqlMapClient smc;
	
	private IMemberTeacherDAO memTeachDAO;
	
	private MemberTeacherServiceImpl() {
		memTeachDAO = MemberTeacherDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IMemberTeacherService getInstance() {
		if(memTeachService == null) {
			memTeachService = new MemberTeacherServiceImpl();
		}
		
		return memTeachService;
	}
	
	// 추상메서드 오버라이드 해주기

	@Override
	public int insertMemberTeacher(MemberTeacherVO mtv) {
		
		int cnt = 0;
		
		try {
			smc.startTransaction(); // 트랙잭션 시작
			
			cnt = memTeachDAO.insertMemberTeacher(smc, mtv);
			
			smc.commitTransaction(); // 커밋
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				smc.endTransaction(); // 트랜잭션 끝...
			} catch (SQLException e) {
				e.printStackTrace();
			} // 예외가 발생하지 않든 예외가 발생하지 않든 end Transaction해준다.
		}
		
		return cnt;
	}

	@Override
	public String getTeacherId(String memMail) {
		
		return memTeachDAO.getTeacherId(smc, memMail);
	}

	
	

}