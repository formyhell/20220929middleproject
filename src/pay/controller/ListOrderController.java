package pay.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pay.service.IOrderService;
import pay.service.OrderServiceImpl;
import pay.vo.OrderVO;

@WebServlet("/pay/ListOrder.do")
public class ListOrderController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IOrderService service = OrderServiceImpl.getInstance();
		
		List<OrderVO> orderList = service.getAllOrderList();
		
		req.setAttribute("orderList", orderList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/WEB_INF/jsp/cart/shop-cart.jsp");
		
		rd.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
}
