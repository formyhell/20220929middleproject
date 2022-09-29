package jobposting.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jobposting.service.IPostService;
import jobposting.service.PostServiceImpl;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class deleteQnaController
 */
@WebServlet("/deletePost.do")
public class deletePostController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		IPostService postService = PostServiceImpl.getInstance();
		
		int cnt = postService.deletePost(postNo);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("msg", msg);
		
		request.setAttribute("msg", msg);
		
		String redirectUrl = request.getContextPath() + "/listPost.do";
		response.sendRedirect(redirectUrl);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
