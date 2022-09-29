package wishlist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.vo.MemberVO;
import qna.service.IQnaService;
import qna.service.qnaServiceImpl;
import qna.vo.qnaVO;
import wishlist.service.IWishlistService;
import wishlist.service.wishlistServiceImpl;
import wishlist.vo.wishlistVO;

/**
 * Servlet implementation class InsertQnaController1
 */
@WebServlet("/insertWishlist.do")
public class InsertWishlistController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String memMail = (String) session.getAttribute("memMail");
		
		String lecId = req.getParameter("lecId");
		
		IWishlistService wishService = wishlistServiceImpl.getInstance();
		
		// 3. 회원정보 등록
		wishlistVO wishVO = new wishlistVO();
		wishVO.setLectureId(lecId);
		wishVO.setMemMail(memMail);
		
		wishService.insertWishlist(wishVO);
		
		
		
		String redirctUrl = req.getContextPath() + "/lecture/detail.do?lecId=" + lecId;
		resp.sendRedirect(redirctUrl);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}

}
