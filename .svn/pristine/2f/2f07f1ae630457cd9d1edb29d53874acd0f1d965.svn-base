package notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.IAdminService;
import admin.vo.AdminVO;
import notice.service.INoticeService;
import notice.service.noticeServiceImpl;
import notice.vo.noticeVO;


/**
 * Servlet implementation class ListQnaController
 */
@WebServlet("/backlistNotice.do")
public class backListNoticeController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		INoticeService noticeService = noticeServiceImpl.getInstance();
				
		List<noticeVO> noticeList = noticeService.getAllNoticeList();
				
		req.setAttribute("noticeList", noticeList);
				
		RequestDispatcher rd =  
			req.getRequestDispatcher("/nest-backend/back-notice-list.jsp");
		rd.forward(req, resp);
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
