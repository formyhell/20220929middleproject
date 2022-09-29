package notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminServiceImpl;
import admin.service.IAdminService;
import notice.service.INoticeService;
import notice.service.noticeServiceImpl;
import notice.vo.noticeVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class qnaDetailController
 */
@WebServlet("/backNoticeDetail.do")
public class backnoticeDetailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		
		INoticeService noticeService = noticeServiceImpl.getInstance();
		
		noticeVO notiVO = noticeService.getNotice(noticeNum);
		
		
		request.setAttribute("notiVO", notiVO);
		
		request.getRequestDispatcher("/nest-backend/back-notice-detail.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
