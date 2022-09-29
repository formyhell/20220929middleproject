package lecture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecreview.service.ILecReviewService;
import lecreview.service.LecReviewServiceImpl;
import lecreview.vo.LecReviewVO;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;

@WebServlet("/lecture/list.do")
public class ListLectureController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String approve = "Y";
		// 1. 서비스 객체 생성하기
		ILectureService lecService = LectureServiceImpl.getinstance();
		
		// 2. 강의정보 조회
		List<LectureVO> lecList = lecService.getAllYesLectureList(approve);
		
		req.setAttribute("lecList",lecList);
		
		RequestDispatcher rd =
				req.getRequestDispatcher("/WEB-INF/jsp/lectureList.jsp");
		rd.forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
