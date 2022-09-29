package notice.controller;

import java.io.IOException;
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
 * Servlet implementation class updateQnaController
 */
@WebServlet("/updateNotice.do")
public class updateNoticeController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int noticeNum = Integer.parseInt(req.getParameter("noticeNum"));
		
		INoticeService noticeService = noticeServiceImpl.getInstance();
		
		noticeVO notiVO = noticeService.getNotice(noticeNum);
		
		
		req.setAttribute("notiVO", notiVO);
		
		req.getRequestDispatcher("/nest-backend/back-notice-update.jsp").forward(req, resp);


	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeContent = request.getParameter("noticeContent");
		
		INoticeService noticeService = noticeServiceImpl.getInstance();
		
		noticeVO notiVO  = new noticeVO();
		notiVO.setNoticeNum(noticeNum);
		notiVO.setNoticeTitle(noticeTitle);
		notiVO.setNoticeContent(noticeContent);
		
		int cnt = noticeService.updateNotice(notiVO);
		
		
		String redirctUrl = request.getContextPath() + "/backNoticeDetail.do?noticeNum=" + noticeNum;
		response.sendRedirect(redirctUrl);
	}

}
