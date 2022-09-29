package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jobposting.service.IPostService;
import jobposting.service.PostServiceImpl;
import lecture.file.service.IAtchFileService;
import lecture.file.service.IAtchFileServiceImpl;
import lecture.file.vo.AtchFileVO;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;


@WebServlet("/approveUpdate.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 3,
maxFileSize = 1024 * 1024 * 40, maxRequestSize = 1024 * 1024 * 50)
public class updateLectureApproveController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 1. 요청 파라미터 정보 가져오기
		String lecId = req.getParameter("lecId");		
		
		// 2. 서비스 객체 생성하기
		ILectureService lecService = LectureServiceImpl.getinstance();
		
		
		// 3. 회원정보 변경
		LectureVO lv = new LectureVO();
		lv.setLecId(lecId);
		
		int cnt = lecService.updateApprove(lv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		String redirectUrl = req.getContextPath() + "/page-approve-list.do";
		
		resp.sendRedirect(redirectUrl);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
