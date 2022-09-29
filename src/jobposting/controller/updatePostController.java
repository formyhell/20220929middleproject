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
 * Servlet implementation class updateQnaController
 */
@WebServlet("/updatePost.do")
public class updatePostController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int postNo = Integer.parseInt(req.getParameter("postNo"));
		
		IPostService postService = PostServiceImpl.getInstance();
		
		PostVO pv = postService.getPost(postNo);
		
		
		req.setAttribute("pv", pv);
		
		req.getRequestDispatcher("/nest-backend/back-notice-update.jsp").forward(req, resp);


	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");
		
		IPostService postService = PostServiceImpl.getInstance();
		
		PostVO pv = new PostVO();
		pv.setPostNo(postNo);
		pv.setPostTitle(postTitle);
		pv.setPostContent(postContent);
		
		int cnt = postService.updatePost(pv);
		
		
		String redirctUrl = request.getContextPath() + "/PostDetail.do?postNo=" + postNo;
		System.out.println(redirctUrl);
		response.sendRedirect(redirctUrl);
	}

}
