package coment.service;

import java.util.List;

import coment.vo.comentVO;


public interface IComentService {

	/**
	 * ComentVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param notiVO DB에 insert할 자료가 저장된 ComentVO객체
	 * @return DB작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int insertComent(comentVO coVO);
	
	/**
	 * 하나의 ComentVO 객체를 받아서 DB에 update하는 메서드
	 * @param notiVO update할 글정보가 들어있는 Coment객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int updateComent(comentVO coVO);
	
	/**
	 * 글번호를 매개변수로 받아서 그 글의 정보를 삭제하는 메서드
	 * @param ComentNo 삭제할 글번호
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int deleteComent(int comentNo);
	
	public int delComForQna(int qnaNo);
	
	/**
	 * DB의 Coment테이블에 있는 전체 레코드를 가져와서 List에 담아 반환하는 메서드
	 * @return ComentVO객체에 담고있는 List객체
	 */
	public List<comentVO> getAllComentList(int qnaNo);
	
	public comentVO getComent(int qnaNo);
}
