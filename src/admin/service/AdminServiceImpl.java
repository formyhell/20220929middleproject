package admin.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import admin.dao.AdminDAOImpl;
import admin.dao.IAdminDAO;
import admin.vo.AdminVO;
import admin.vo.instructorVO;
import member.dao.IMemberDAO;
import member.vo.MemberVO;
import util.SqlMapClientFactory;

public class AdminServiceImpl implements IAdminService {
	private IAdminDAO AdminDAO;
	private SqlMapClient smc;
	
	private static IAdminService AdminService;
	
	private AdminServiceImpl() {
		AdminDAO = AdminDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IAdminService getInstance() {
		if(AdminService == null) {
			AdminService = new AdminServiceImpl();
		}
		return AdminService;
	}

//	
//	@Override
//	public int insertMember(MemberVO mv) {
//		int cnt = 0;
//		
//		try {
//			smc.startTransaction(); // 트랜잭션 시작
//			cnt = IMemberDAO.insertMember(smc, mv);
//			
//			smc.commitTransaction(); // 커밋
//			
//		} catch (Exception e) {
//			try {
//				smc.endTransaction();// 롤백(커밋 없이 엔드)
//			} catch (SQLException e1) {
//				e1.printStackTrace();
//			} 
//			e.printStackTrace();
//		} finally {
//			try {
//				smc.endTransaction(); // 트랜잭션 끝
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		
//		return cnt;
//	}
//
//	@Override
//	public int updateMember(MemberVO qv) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	@Override
	public int deleteMember(String MemberNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<AdminVO> getAdmin() {
		return AdminDAO.getAdmin(smc);
	}

	@Override
	public List<AdminVO> searchMemberList(MemberVO mv) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<instructorVO> getSellerList() {
		return AdminDAO.getSellerList(smc);
	}
	
	// 관리자 로그인용
	@Override
	public AdminVO adminLogin(String adminId, String adminPw) {
		return AdminDAO.adminLogin(smc, adminId, adminPw);
	}

	@Override
	public instructorVO getSellerDetail(String instructId) {
		return AdminDAO.getSellerDetail(smc, instructId);
	}
	
	
}
