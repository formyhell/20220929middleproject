package memberTeacher.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import memberTeacher.vo.MemberTeacherVO;

/**
 * 실제 DB와 연결해서 SQL문을 수행 후 결과를 작성하여 Service에
 * 전달하는 DAO의 Interface
 * @author 306-11
 */
public interface IMemberTeacherDAO {
	
	/**
	 * MemberVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param mv DB에 Insert할 자료가 저장된 MemberVO객체
	 * @return DB 작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	
	public int insertMemberTeacher(SqlMapClient smc, MemberTeacherVO mtv);

	/**
	 * 하나의 MemberVO 객체를 받아서 DB에 update하는 메서드 
	 * @param mv update할 회원정보가 들어있는 MemberVO객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	
	
	public String getTeacherId(SqlMapClient smc, String memMail);
}