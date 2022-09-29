package qna.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class updateQnaController
 */
@WebServlet("/updateQna.do")
public class updateQnaController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(req.getParameter("qnaNo"));
		
		IQnaService qnaService = qnaServiceImpl.getInstance();
		
		qnaVO qv = qnaService.getQna(qnaNo);
		
		
		req.setAttribute("qv", qv);
		
		req.getRequestDispatcher("/WEB-INF/jsp/qna/qnaUpdate.jsp").forward(req, resp);


	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		String qnaTitle = request.getParameter("qnaTitle");
		String qnaContent = request.getParameter("qnaContent");
		
		IQnaService qnaService = qnaServiceImpl.getInstance();
		
		qnaVO qv = new qnaVO();
		qv.setQnaNo(qnaNo);
		qv.setQnaTitle(qnaTitle);
		qv.setQnaContent(qnaContent);
		
		int cnt = qnaService.updateQna(qv);
		
		
		String redirctUrl = request.getContextPath() + "/qnaDetail.do?qnaNo=" + qnaNo;
		response.sendRedirect(redirctUrl);
	}

}
