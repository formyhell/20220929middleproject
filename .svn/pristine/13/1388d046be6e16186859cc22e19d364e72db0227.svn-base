package wishlist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;
import wishlist.service.IWishlistService;
import wishlist.service.wishlistServiceImpl;
import wishlist.vo.wishlistVO;


/**
 * Servlet implementation class ListQnaController
 */
@WebServlet("/listWishlist.do")
public class ListWishlistController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String memMail = (String) session.getAttribute("memMail");
		
		IWishlistService wishService = wishlistServiceImpl.getInstance();
				
		List<wishlistVO> wishlist = wishService.getWishlist(memMail);
				
		req.setAttribute("wishlist", wishlist);
				
		RequestDispatcher rd =  
			req.getRequestDispatcher("/WEB-INF/jsp/wishlist.jsp");
		rd.forward(req, resp);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
