package wishlist.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coment.service.IComentService;
import coment.service.comentServiceImpl;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;
import wishlist.service.IWishlistService;
import wishlist.service.wishlistServiceImpl;

/**
 * Servlet implementation class deleteQnaController
 */
@WebServlet("/deleteWishlist.do")
public class deleteWishlistController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memMail = request.getParameter("memMail");
		
		IWishlistService wishService = wishlistServiceImpl.getInstance();
		
		int cnt = wishService.deleteWishlist(memMail);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
//		HttpSession session = request.getSession();
//		session.setAttribute("msg", msg);
//		
//		request.setAttribute("msg", msg);
//		
//		String redirectUrl = request.getContextPath() + "/listQna.do";
//		response.sendRedirect(redirectUrl);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
