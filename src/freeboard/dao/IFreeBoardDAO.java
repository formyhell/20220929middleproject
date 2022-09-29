package freeboard.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import freeboard.vo.FreeBoardVO;
import lecreview.vo.LecReviewVO;
import lecture.vo.LectureVO;

public interface IFreeBoardDAO {

	/**
	 * LectureVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param lv DB에 insert한 자료가 저장된 LectureVO객체
	 * @return DB작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int insertFreeBoard(SqlMapClient smc, FreeBoardVO fv);
	
	/**
	 * 하나의 LectureVO 객체를 받아엇 DB에 update하는 메서드
	 * @param lv update 할 회원정보가 들어있는 LectureVO객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int updateFreeBoard(SqlMapClient smc, FreeBoardVO fv);
	
	/**
	 * 강의 ID를 매개변수로 받아서 그 강의 정보를 삭제하는 메서드
	 * @param lectureId 삭제할 강의 ID
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int deleteFreeBoard(SqlMapClient smc, String freeNum);
	
	/**
	 * DB의 lecture테이블에 있는 전체 레코드를 가져와서 List에 담아 반환하는
	 * 메서드
	 * @return LectureVO객체를 담고있는 List객체
	 */
	public List<FreeBoardVO> getAllFreeBoardList(SqlMapClient smc);
	
	
	/**
	 * 주어진 강의ID를 이용하여 회원정보를 조회하기 위한 메서드
	 * @param smc
	 * @param lecId 검색할 강의 ID
	 * @return 조회된 강의정보를 담은 VO객체
	 */
	public FreeBoardVO getFreeBoard(SqlMapClient smc, String freeNum);
	
	/**
	 * LectureVO객체에 담긴 강의정보를 이용하여 강의을 검색하는 메서드
	 * @param lv 검색할 자료가 들어 있는 LectureVO 객체
	 * @return 검색된 결과를 담은 List객체
	 */
	public List<FreeBoardVO> searchFreeBoardList(SqlMapClient smc, FreeBoardVO fv);

	
}
