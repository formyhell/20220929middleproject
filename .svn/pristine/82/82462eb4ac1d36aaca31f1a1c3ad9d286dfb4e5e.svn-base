package pay.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pay.service.IOrderService;
import pay.service.OrderServiceImpl;
import pay.vo.OrderVO;

@WebServlet("/pay/insertOrder.do")
public class InsertOrderController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB_INF/jsp/cart/shop-cart.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 요청 파라미터 정보 가져오기
		int orderPrice = Integer.parseInt(req.getParameter("orderPrice"));
		String memMail = req.getParameter("memMail");
		
		// 2. 서비스 객체 생성하기
		IOrderService orderService = OrderServiceImpl.getInstance();
		
		// 3. 회원정보 등록
		OrderVO ov = new OrderVO();
		ov.setOrderPrice(orderPrice);
		ov.setMemMail(memMail);
		
		long cnt = (long)orderService.insertOrder(ov);
		
		resp.getWriter().print("{\"result\": " + cnt + "}");
		
		
	}
}