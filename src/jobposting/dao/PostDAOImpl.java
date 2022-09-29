package jobposting.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

import com.ibatis.sqlmap.client.SqlMapClient;

import jobposting.vo.PostVO;
import qna.vo.qnaVO;

public class PostDAOImpl implements IPostDAO{
	private static IPostDAO PostDAO;
	
	private PostDAOImpl() {
		
	}
	public static IPostDAO getInstance() {
		if(PostDAO == null) {
			PostDAO = new PostDAOImpl();
		}
		return PostDAO;
	}

	@Override
	public int insertPost(SqlMapClient smc, PostVO pv) {
		int cnt = 0;
		
		try {
			cnt = smc.update("post.insertPost", pv);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("c" + cnt);
		return cnt;
	}

	@Override
	public int updatePost(SqlMapClient smc, PostVO pv) {
		int cnt = 0;
		
		try {
			cnt = smc.update("post.updatePost", pv);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("공지글 수정 실패", e);
		}
		return cnt;
	}

	@Override
	public int deletePost(SqlMapClient smc, int postNo) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("post.deletePost", postNo);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("공지글 삭제 실패", e);
		}
		
		return cnt;
	}

	@Override
	public List<PostVO> getAllPostList(SqlMapClient smc) {
		List<PostVO> postList = new ArrayList<PostVO>();
		
		try {
			postList = smc.queryForList("post.getPostAll");

		}catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("공지글 조회중 예외 발생", e);
		}
		
		return postList;
	}

	@Override
	public PostVO getPost(SqlMapClient smc, int postNo) {
		PostVO pv = null;
		
		try {
			
			pv = (PostVO)smc.queryForObject("post.getPost", postNo);
					
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("문의글 상세 조회 중 예외 발생", e);
		} 
		
		return pv;
	}

//	@Override
//	public List<PostingVO> searchPostList(SqlMapClient smc, PostingVO qv) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<PostingVO> searchPost(SqlMapClient smc, PostingVO qv) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
