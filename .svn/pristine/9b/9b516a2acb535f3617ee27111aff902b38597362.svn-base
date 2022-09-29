package notice.service;

import java.util.List;

import notice.vo.noticeVO;


public interface INoticeService {

	/**
	 * noticeVO에 담겨진 자료를 DB에 insert하는 메서드
	 * @param notiVO DB에 insert할 자료가 저장된 noticeVO객체
	 * @return DB작업이 성공하면 1 이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int insertNotice(noticeVO notiVO);
	
	/**
	 * 하나의 noticeVO 객체를 받아서 DB에 update하는 메서드
	 * @param notiVO update할 글정보가 들어있는 notice객체
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int updateNotice(noticeVO notiVO);
	
	/**
	 * 글번호를 매개변수로 받아서 그 글의 정보를 삭제하는 메서드
	 * @param noticeNo 삭제할 글번호
	 * @return 작업성공 : 1, 작업실패 : 0
	 */
	public int deleteNotice(int noticeNum);
	
	/**
	 * DB의 notice테이블에 있는 전체 레코드를 가져와서 List에 담아 반환하는 메서드
	 * @return noticeVO객체에 담고있는 List객체
	 */
	public List<noticeVO> getAllNoticeList();
	
	public noticeVO getNotice(int noticeNum);
	
	
}
