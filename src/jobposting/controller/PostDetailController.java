package jobposting.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobposting.service.IPostService;
import jobposting.service.PostServiceImpl;
import jobposting.vo.PostVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class qnaDetailController
 */
@WebServlet("/PostDetail.do")
public class PostDetailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		// 1. 서비스 객체 생성하기
		IPostService postService = PostServiceImpl.getInstance();
		
		// 2. 문의글 상세 조회
		PostVO pv = postService.getPost(postNo);
		
//		if(qv.getAtchFileId() > 0) { // 첨부파일 존재하는 경우
//			// 2-1. 첨부파일 목록 조회
//			AtchFileVO fileVO = new AtchFileVO();
//			fileVO.setAtchFileId(qv.getAtchFileId());
//			
//			List<AtchFileVO> atchFileList = fileService.getAtchFileList(fileVO);
//			
//			req.setAttribute("atchFileList", atchFileList);
//		}
		
		request.setAttribute("pv", pv);
		
		request.getRequestDispatcher("/WEB-INF/jsp/jobpost/postDetail.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
