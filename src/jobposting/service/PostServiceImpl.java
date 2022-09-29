package jobposting.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import jobposting.dao.IPostDAO;
import jobposting.dao.PostDAOImpl;
import jobposting.vo.PostVO;
import qna.dao.IQnaDAO;
import qna.dao.qnaDAOImpl;
import qna.vo.qnaVO;
import util.SqlMapClientFactory;

public class PostServiceImpl implements IPostService{
	
	private IPostDAO postDAO;
	private SqlMapClient smc;
	
	private static IPostService postService;
	
	private PostServiceImpl() {
		postDAO = PostDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IPostService getInstance() {
		if(postService == null) {
			postService = new PostServiceImpl();
		}
		return postService;
	}

	
	@Override
	public int insertPost(PostVO pv) {
		int cnt = 0;
		
		try {
			smc.startTransaction(); // 트랜잭션 시작
			cnt = postDAO.insertPost(smc, pv);
			
			smc.commitTransaction(); // 커밋
			
		} catch (Exception e) {
			try {
				smc.endTransaction();// 롤백(커밋 없이 엔드)
			} catch (SQLException e1) {
				e1.printStackTrace();
			} 
			e.printStackTrace();
		} finally {
			try {
				smc.endTransaction(); // 트랜잭션 끝
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return cnt;
	}

	@Override
	public int updatePost(PostVO pv) {
		return postDAO.updatePost(smc, pv);
	}

	@Override
	public int deletePost(int postNo) {
		return postDAO.deletePost(smc, postNo);
	}

	@Override
	public List<PostVO> getAllPostList() {
		
		return postDAO.getAllPostList(smc);
	}

//	@Override
//	public List<PostVO> searchPostList(PostVO mv) {
//		return null;
//	}

	@Override
	public PostVO getPost(int postNo) {
		return postDAO.getPost(smc, postNo);
	}
}
