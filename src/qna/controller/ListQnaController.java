package qna.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;


/**
 * Servlet implementation class ListQnaController
 */
@WebServlet("/listQna.do")
public class ListQnaController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		// 1. 서비스 객체 생성
		IQnaService qnaService = qnaServiceImpl.getInstance();
		ILectureService lecService = LectureServiceImpl.getinstance();
		
		// 2. qna 조회
		List<qnaVO> qnaList = qnaService.getAllQnaList();
				
		req.setAttribute("qnaList", qnaList);
				
		RequestDispatcher rd =  
			req.getRequestDispatcher("/WEB-INF/jsp/qna/qnaList.jsp");
		rd.forward(req, resp);
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String qnaTitle = request.getParameter("qnaTitle");
		
		IQnaService qnaService = qnaServiceImpl.getInstance();
				
		
		List<qnaVO> qnaList = qnaService.searchQnaList(qnaTitle);
				
		request.setAttribute("qnaList", qnaList);
				
		RequestDispatcher rd =  
				request.getRequestDispatcher("/WEB-INF/jsp/qna/qnaList.jsp");
		rd.forward(request, response);
		
	}

}
