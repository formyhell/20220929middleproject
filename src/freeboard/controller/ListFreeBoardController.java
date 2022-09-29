package freeboard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import freeboard.service.FreeBoardServiceImpl;
import freeboard.service.IFreeBoardService;
import freeboard.vo.FreeBoardVO;


@WebServlet("/freeboard/list.do")
public class ListFreeBoardController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 서비스 객체 생성하기
		IFreeBoardService freeBoardService = FreeBoardServiceImpl.getinstance();
		
		// 2. 강의정보 조회
		List<FreeBoardVO> freeBoardList = freeBoardService.getAllFreeBoardList();
		
		req.setAttribute("freeBoardList", freeBoardList);
		
		RequestDispatcher rd =
				req.getRequestDispatcher("/WEB-INF/jsp/freeboard/list.jsp");
		rd.forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
