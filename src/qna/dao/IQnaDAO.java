package qna.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import qna.vo.qnaVO;


public interface IQnaDAO {
	/**
	 * qnaVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param qv DB에 insert할 자료가 저장된 qnaVO객체
	 * @return DB작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int insertQna(SqlMapClient smc, qnaVO qv);
	
	/**
	 * 하나의 qnaVO 객체를 받아서 DB에 update하는 메서드
	 * @param qv update할 글정보가 들어있는 Qna객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int updateQna(SqlMapClient smc, qnaVO qv);
	
	/**
	 * 글번호를 매개변수로 받아서 그 글의 정보를 삭제하는 메서드
	 * @param qnaNo 삭제할 글번호
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int deleteQna(SqlMapClient smc, int qnaNo);
	
	/**
	 * DB의 Qna테이블에 있는 전체 레코드를 가져와서 List에 담아 반환하는 메서드
	 * @return qnaVO객체에 담고있는 List객체
	 */
	public List<qnaVO> getAllQnaList(SqlMapClient smc);
	
	
	/**
	 * 주어진 회원 ID를 이용하여 회원정보를 조회하기 위한 메서드
	 * @param smc
	 * @param memId 검색할 회원ID
	 * @return 조회된 회원정보를 담은 VO객체
	 */
	public qnaVO getQna(SqlMapClient smc, int qnaNo);
	
	public List<qnaVO> searchQnaList(SqlMapClient smc, String qnaTitle);
	
	public List<qnaVO> moreQna(SqlMapClient smc, String lectureId);
	
	public List<qnaVO> lectureQnaList(SqlMapClient smc, String lecId);
	
}
