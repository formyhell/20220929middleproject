package cart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lecture.vo.LectureVO;

@WebServlet("/cart/cartDelete.do")
public class deleteCartController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		ArrayList<LectureVO> cartList = (ArrayList<LectureVO>) session.getAttribute("cartlist");
//		int i = Integer.parseInt(req.getParameter("i"));

//		System.out.print(i);
		cartList.remove(Integer.parseInt(req.getParameter("i")));

		String redirectUrl = req.getContextPath() + "/cart.do";

		resp.sendRedirect(redirectUrl);
		 
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	
}
