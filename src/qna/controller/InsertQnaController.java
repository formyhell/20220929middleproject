package qna.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class InsertQnaController1
 */
@WebServlet("/insertQna.do")
public class InsertQnaController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String lecId = req.getParameter("lecId");
		
		ILectureService lecService = LectureServiceImpl.getinstance();
		
		LectureVO lv = lecService.getLecture(lecId);
		
		req.setAttribute("lv", lv);
		
		req.getRequestDispatcher("/WEB-INF/jsp/qna/qnaInsert.jsp").forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String memMail = (String) session.getAttribute("memMail");
		
		// 1. 요청 파라미터 정보 가져오기
		String lecId = req.getParameter("lecId");
		String qnaTitle = req.getParameter("qnaTitle");
		String qnaContent = req.getParameter("qnaContent");
	
		// HTTP 요청의 파라미터 값을 얻기 위해 사용하는 것이 request.getParameter() 메소드
		
		// 2.서비스 객체 생성
		IQnaService qnaService = qnaServiceImpl.getInstance();
		
		// 3. 회원정보 등록
		qnaVO qv = new qnaVO();
		qv.setQnaTitle(qnaTitle);
		qv.setQnaContent(qnaContent);
		qv.setLectureId(lecId);
		qv.setMemMail(memMail);
		
		
		int cnt = qnaService.insertQna(qv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		String redirctUrl = req.getContextPath() + "/moreQna.do?lecId=" + lecId;
		resp.sendRedirect(redirctUrl);
		
		
	}

}
