package freeboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import freeboard.service.FreeBoardServiceImpl;
import freeboard.service.IFreeBoardService;
import lecreview.service.ILecReviewService;
import lecreview.service.LecReviewServiceImpl;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;


@WebServlet("/freeboard/delete.do")
public class DeleteFreeBoardController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String freeNum = req.getParameter("freeNum");
		
		//1. 서비스 객체 생성
		IFreeBoardService freeBoardService = FreeBoardServiceImpl.getinstance();
		
		// 2. 삭제
		int cnt = freeBoardService.deleteFreeBoard(freeNum);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		req.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/freeboard/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}
	
}
