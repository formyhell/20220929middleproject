package lecture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
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
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;


@WebServlet("/lecture/detail.do")
public class DetailLectureController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String lecId = req.getParameter("lecId");
		
		// 1. 서비스 객체 생성하기
		ILectureService lecService = LectureServiceImpl.getinstance();
		IAtchFileService fileService = IAtchFileServiceImpl.getInstance();

		IQnaService qnaService = qnaServiceImpl.getInstance();

		ILecReviewService lecReviewService = LecReviewServiceImpl.getinstance();

		
		// 2. 회원정보 조회
		LectureVO lv = lecService.getLecture(lecId);

		List<qnaVO> qnaList = qnaService.lectureQnaList(lecId);

		List<LecReviewVO> lecReviewList = lecReviewService.getAllLecReviewList();

		
		if(lv.getAtchFileId() > 0) { // 첨부파일 존재하는 경우..
			// 2-1. 첨부파일 목록 조회
			AtchFileVO fileVO = new AtchFileVO();
			fileVO.setAtchFileId(lv.getAtchFileId());
			
			AtchFileVO atchFile = fileService.getAtchFileList(fileVO);
			req.setAttribute("atchFile", atchFile);
			
		}
		
		req.setAttribute("lv", lv);
		
		req.setAttribute("qnaList", qnaList);

		req.setAttribute("lecReviewList", lecReviewList);
		
		req.getRequestDispatcher("/WEB-INF/jsp/lectureDetail.jsp")
			.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}
	
}
