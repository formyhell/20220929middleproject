package freeboard.controller;

import java.io.IOException;
import java.util.List;

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


@WebServlet("/freeboard/update.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 3,
maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
public class updateFreeBoardController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String freeNum = req.getParameter("freeNum");
		
		// 1. 서비스 객체 생성하기
		IFreeBoardService freeBoardService = FreeBoardServiceImpl.getinstance();
		
		// 2.자유게시판 조회
		FreeBoardVO fv = freeBoardService.getFreeBoard(freeNum);
		
		req.setAttribute("fv", fv);
		
		req.getRequestDispatcher("/WEB-INF/jsp/freeboard/updateForm.jsp")
			.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		// 1. 요청 파라미터 정보 가져오기
		String freeTitle = req.getParameter("freeTitle");
		String freeContent = req.getParameter("freeContent");
		
		
		// 2. 서비스 객체 생성하기
		IFreeBoardService freeBoardService = FreeBoardServiceImpl.getinstance();
		
		
		// 3. 자유게시판 정보 변경
		FreeBoardVO fv = new FreeBoardVO();
		fv.setFreeTitle(freeTitle);
		fv.setFreeContent(freeContent);
		
		int cnt = freeBoardService.updateFreeBoard(fv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		//req.getRequestDispatcher("/member/list.do").forward(req, resp);
		
		String redirectUrl = req.getContextPath() + "/freeboard/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
}
