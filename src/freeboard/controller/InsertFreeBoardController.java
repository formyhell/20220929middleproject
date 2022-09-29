package freeboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import freeboard.service.FreeBoardServiceImpl;
import freeboard.service.IFreeBoardService;
import freeboard.vo.FreeBoardVO;
import lecreview.service.ILecReviewService;
import lecreview.service.LecReviewServiceImpl;
import lecreview.vo.LecReviewVO;
import lecture.file.service.IAtchFileService;
import lecture.file.service.IAtchFileServiceImpl;
import lecture.file.vo.AtchFileVO;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;

@WebServlet("/freeboard/insert.do")
public class InsertFreeBoardController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/jsp/freeboard/insertForm.jsp")
			.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 요청 파라미터 가져오기
		String memMail = req.getParameter("memMail");
		String freeTitle = req.getParameter("freeTitle");
		String freeContent = req.getParameter("freeContent");
		
		// 2. 서비스 객체 생성하기
		IFreeBoardService freeBoardService = FreeBoardServiceImpl.getinstance();
		
		
		// 3. 강의리뷰 등록
		FreeBoardVO fv = new FreeBoardVO();
		fv.setMemMail(memMail);
		fv.setFreeTitle(freeTitle);
		fv.setFreeContent(freeContent);
		
		int cnt = freeBoardService.insertFreeBoard(fv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		//req.getRequestDispatcher("/lecture/list.do").forward(req, resp);
		
		String redirectUrl = req.getContextPath() + "/freeboard/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
	
}
