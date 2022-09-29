package lecreview.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecreview.service.ILecReviewService;
import lecreview.service.LecReviewServiceImpl;
import lecreview.vo.LecReviewVO;
import lecture.file.service.IAtchFileService;
import lecture.file.service.IAtchFileServiceImpl;
import lecture.file.vo.AtchFileVO;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;

@WebServlet("/lecreview/insert2.do")
public class InsertLecReviewController2 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 요청 파라미터 가져오기
				String lecId = req.getParameter("lecId");
				String reTitle = req.getParameter("reTitle");
				String reContent = req.getParameter("reContent");
				int satisfaction = Integer.parseInt(req.getParameter("satisfaction"));
				
				// 2. 서비스 객체 생성하기
				ILecReviewService lecReviewService = LecReviewServiceImpl.getinstance();
				
				
				// 3. 강의리뷰 등록
				LecReviewVO rv = new LecReviewVO();
				rv.setLecId(lecId);
				rv.setReTitle(reTitle);
				rv.setReContent(reContent);
				rv.setSatisfaction(satisfaction);
				
				int cnt = lecReviewService.insertLecReview(rv);
				
				String msg = "";
				
				if(cnt > 0) {
					msg = "성공";
				}else {
					msg = "실패";
				}
				
				//req.getRequestDispatcher("/lecture/list.do").forward(req, resp);
				
				String redirectUrl = req.getContextPath() + "/lecreview/list.do?lecId=" + lecId;
				
				resp.sendRedirect(redirectUrl);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}
	
}
