package lecture.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecture.file.service.IAtchFileService;
import lecture.file.service.IAtchFileServiceImpl;
import lecture.file.vo.AtchFileVO;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;

@WebServlet("/lecture/insert.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 3,
maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
public class InsertLectureController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/jsp/lecture/insertForm.jsp")
			.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 요청 파라미터 가져오기
		String lecId = req.getParameter("lecId");
		String memMail = req.getParameter("memMail");
		String instructorId = req.getParameter("instructorId");
		String lecTitle = req.getParameter("lecTitle");
		int lecPrice = Integer.parseInt(req.getParameter("lecPrice"));
		String lecIntro = req.getParameter("lecIntro");
		String scategoryId = req.getParameter("scategoryId");
		String lecCurri = req.getParameter("lecCurri");
		
		// 2. 서비스 객체 생성하기
		ILectureService lecService = LectureServiceImpl.getinstance();
		IAtchFileService fileService = IAtchFileServiceImpl.getInstance();
		
		AtchFileVO atchFileVO = new AtchFileVO();
		
		//첨부파일 목록 저장(공통기능)
		atchFileVO = fileService.saveAtchFileList(req);
		
		// 3. 강의정보 등록
		LectureVO lv = new LectureVO();
		lv.setLecId(lecId);
		lv.setMemMail(memMail);
		lv.setInstructorId(instructorId);
		lv.setLecTitle(lecTitle);
		lv.setLecPrice(lecPrice);
		lv.setLecIntro(lecIntro);
		lv.setLecCurri(lecCurri);
		lv.setScategoryId(scategoryId);
		lv.setAtchFileId(atchFileVO.getAtchFileId());
		
		int cnt = lecService.insertLecture(lv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		//req.getRequestDispatcher("/lecture/list.do").forward(req, resp);
		
		String redirectUrl = req.getContextPath() + "/lecture/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
	
}
