package pay.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cart.service.CartServiceImpl;
import cart.service.ICartService;
import cart.vo.CartVO;
import lecture.vo.LectureVO;
import pay.service.IPayService;
import pay.service.PayServiceImpl;
import pay.vo.PayVO;


@WebServlet("/pay/Receipt.do")
public class GetReceiptController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		String payId =req.getParameter("payId");
		System.out.println("payId: "+ payId);
		
		IPayService service = PayServiceImpl.getInstance();
		
		PayVO vo = service.getPay(payId);
		
		req.setAttribute("pv", vo);
		
		req.getRequestDispatcher("/WEB-INF/jsp/cart/shop-invoice.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
