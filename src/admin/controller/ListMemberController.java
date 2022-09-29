package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/admin/list.do") // value = <이거 빠져도 오류가 안난다.
// 이걸 하고나서 web.xml에 또 등록을 하면 충돌이 난다. 그러므로 web.xml에 하거나 이걸 하거나 둘중 하나 택해야.
public class ListMemberController extends HttpServlet { // tomcat을 참조하면 이렇게 나온다.

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 서비스 객체 생성하기
		IMemberService memService = MemberServiceImpl.getInstance();
		
		// 2. 회원정보 조회
		List<MemberVO> memList = memService.getAllMemberList();
		
		req.setAttribute("memList", memList);
		
		RequestDispatcher rd = 
				req.getRequestDispatcher("/nest-backend/memlist.jsp");
		rd.forward(req, resp); // forward : 전달
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
