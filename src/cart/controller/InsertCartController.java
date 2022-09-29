package cart.controller;

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
import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;
import pay.service.IPayService;
import pay.service.PayServiceImpl;

@WebServlet("/cart/insertCart.do")
public class InsertCartController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB_INF/jsp/cart/shop-cart.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		ArrayList<LectureVO> cartlist = (ArrayList<LectureVO>)session.getAttribute("cartlist");
		
		ICartService service = CartServiceImpl.getInstance();
		ILectureService service2 = LectureServiceImpl.getinstance();
		
		ArrayList<LectureVO> Listcart = new ArrayList<LectureVO>();
		
		String orderId = req.getParameter("payId");
		String checklist = req.getParameter("checklist");
		System.out.println("orderId: " + orderId );
		System.out.println("checklist: "+ checklist);
		
		String[] split = checklist.split(",");
		System.out.println(split);
		
		int cnt = 0;
		for(int i = 0; i < split.length; i ++) {
			String lecId = split[i];
			System.out.println(lecId);
			
			LectureVO lectureVO = service2.getLecture(lecId);
			
			Listcart.add(lectureVO);
			
			CartVO vo = new CartVO();
			vo.setOrderId(orderId);
			vo.setLectureId(lecId);
			
			cnt = service.insertCart(vo);
		}
		session.setAttribute("Listcart", Listcart);
		
		
		//장바구니 구매한 품목을 제외한 세션으로 덮어쓰기
		for(int j=0; j < Listcart.size(); j++) {
				if(cartlist.contains(Listcart.get(j))) {
					cartlist.remove(Listcart.get(j));
				}
		}
		session.setAttribute("cartlist", cartlist);
		session.removeAttribute("cartlist");
		resp.getWriter().print("{\"result\": " + cnt + "}");
	}
		
}
