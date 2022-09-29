package coment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coment.service.IComentService;
import coment.service.comentServiceImpl;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class deleteQnaController
 */
@WebServlet("/deleteMoreComent.do")
public class deleteMoreComentController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int comentNo = Integer.parseInt(request.getParameter("comentNo"));
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		String lecId = request.getParameter("lecId");
		
		IComentService comentService = comentServiceImpl.getInstance();
		
		int cnt = comentService.deleteComent(comentNo);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("msg", msg);
		
		request.setAttribute("msg", msg);
		
		String redirectUrl = request.getContextPath() + "/moreQnaDetail.do?qnaNo=" + qnaNo + "&lecId=" + lecId;
		response.sendRedirect(redirectUrl);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
