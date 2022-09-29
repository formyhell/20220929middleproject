package lecture.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;


@WebServlet("/lecture/delete.do")
public class DeleteLectureController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String lecId = req.getParameter("lecId");
		
		//1. 서비스 객체 생성
		ILectureService lecService = LectureServiceImpl.getinstance();
		
		// 2. 삭제
		int cnt = lecService.deleteLecture(lecId);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		req.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/lecture/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}
	
}
