package memberTeacher.service;

import java.util.HashMap;
import java.util.List;

import member.vo.MemberVO;
import memberTeacher.vo.MemberTeacherVO;

/**
 * Service 객체는 DAO에 설정된 메서드를 원하는 작업에 맞게 호출하여 결과를 받아오고,
 * 받아온 자료를 Controller에게 보내주는 역할을 수행한다.
 * @author 306-11
 */
public interface IMemberTeacherService {
	
	/**
	 * MemberVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param mv DB에 Insert할 자료가 저장된 MemberVO객체
	 * @return DB 작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	
	public int insertMemberTeacher(MemberTeacherVO mtv);

	/**
	 * 하나의 MemberVO 객체를 받아서 DB에 update하는 메서드 
	 * @param mv update할 회원정보가 들어있는 MemberVO객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	
	public String getTeacherId(String memMail);
}
