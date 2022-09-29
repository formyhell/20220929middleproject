package qna.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coment.service.IComentService;
import coment.service.comentServiceImpl;
import coment.vo.comentVO;
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class qnaDetailController
 */
@WebServlet("/qnaDetail.do")
public class qnaDetailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String memMail = (String) session.getAttribute("memMail");
		
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		String lecId = request.getParameter("lecId");
		
		// 1. 서비스 객체 생성하기
		IQnaService qnaService = qnaServiceImpl.getInstance();
		ILectureService lecService = LectureServiceImpl.getinstance();
		IComentService comentService = comentServiceImpl.getInstance();
		IMemberService memService = MemberServiceImpl.getInstance();
		
		// 2. 문의글 상세 조회
		MemberVO memVO = memService.getMember(memMail);
		qnaVO qv = qnaService.getQna(qnaNo);
		LectureVO lv = lecService.getLecture(lecId);
		List<comentVO> comentList = comentService.getAllComentList(qnaNo);
		
		request.setAttribute("memVO", memVO);
		request.setAttribute("memMail", memMail);
		request.setAttribute("qv", qv);
		request.setAttribute("lv", lv);
		request.setAttribute("comentList", comentList);
		
		request.getRequestDispatcher("/WEB-INF/jsp/qna/qna-post.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String memMail = (String) session.getAttribute("memMail");
		
		String comentContent = request.getParameter("comentContent");
		String lecId = request.getParameter("lecId");
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
	
		
		IComentService comentService = comentServiceImpl.getInstance();
	
		comentVO coVO = new comentVO();
		coVO.setComentContent(comentContent);
		coVO.setQnaNo(qnaNo);
		coVO.setLectureId(lecId);
		coVO.setMemMail(memMail);
		
		
		int cnt = comentService.insertComent(coVO);
		
		
		String redirctUrl = request.getContextPath() + "/qnaDetail.do?qnaNo=" + qnaNo + "&lecId=" + lecId;
		response.sendRedirect(redirctUrl);
		
	}

}
