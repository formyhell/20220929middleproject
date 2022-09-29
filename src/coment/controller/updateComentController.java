package coment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coment.service.IComentService;
import coment.service.comentServiceImpl;
import coment.vo.comentVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;

/**
 * Servlet implementation class updateQnaController
 */
@WebServlet("/updateComent.do")
public class updateComentController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int comentNo = Integer.parseInt(req.getParameter("comentNo"));
		
		IComentService comentService = comentServiceImpl.getInstance();
		
		comentVO coVO = comentService.getComent(comentNo);
		
		
		req.setAttribute("coVO", coVO);
		
		req.getRequestDispatcher("/jsp/coment/comentUpdate.jsp").forward(req, resp);


	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int comentNo = Integer.parseInt(request.getParameter("comentNo"));
		String comentContent = request.getParameter("comentContent");
		
		IComentService comentService = comentServiceImpl.getInstance();
		
		comentVO coVO  = new comentVO();
		coVO.setComentNo(comentNo);
		coVO.setComentContent(comentContent);
		
		int cnt = comentService.updateComent(coVO);
		
		
//		String redirctUrl = request.getContextPath() + "/listComent.do";
//		response.sendRedirect(redirctUrl);
	}

}
