package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.service.INoticeService;
import notice.service.noticeServiceImpl;
import notice.vo.noticeVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class InsertQnaController
 */
@WebServlet("/insertNotice.do")
public class InsertNoticeController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/nest-backend/back-notice-insert.jsp").forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeContent = req.getParameter("comentContent");
	
		
		INoticeService noticeService = noticeServiceImpl.getInstance();
		
		noticeVO notiVO = new noticeVO();
		notiVO.setNoticeTitle(noticeTitle);
		notiVO.setNoticeContent(noticeContent);
		
		
		
		int cnt = noticeService.insertNotice(notiVO);
		
		
		String redirctUrl = req.getContextPath() + "/backlistNotice.do";
		resp.sendRedirect(redirctUrl);
		
		
	}

}
