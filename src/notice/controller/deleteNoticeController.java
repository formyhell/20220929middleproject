package notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import notice.service.INoticeService;
import notice.service.noticeServiceImpl;
import notice.vo.noticeVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class deleteQnaController
 */
@WebServlet("/deleteNotice.do")
public class deleteNoticeController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
		
		INoticeService noticeService = noticeServiceImpl.getInstance();
		
		int cnt = noticeService.deleteNotice(noticeNum);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("msg", msg);
		
		request.setAttribute("msg", msg);
		
		String redirectUrl = request.getContextPath() + "/backlistNotice.do";
		response.sendRedirect(redirectUrl);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
