package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;

@WebServlet("/admin/delete.do")
public class DeleteMemberController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memId = req.getParameter("memId"); // 삭제할 데이터의 아이디(기본키)꺼내오기
		
		// 1. 서비스 객체 생성
		IMemberService memService = MemberServiceImpl.getInstance();
		
		// 2. 삭제
		int cnt = memService.deleteMember(memId);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		//forward 방식 : req.getRequestDispatcher("/member/list.do").forward(req, resp); 이렇게 하면 글씨가 깨져서 나오네용
		
		HttpSession session = req.getSession();
		
		session.setAttribute("msg", msg); // 세션은 세션이 끊기기 전까지 유지된다.
		
		// req.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/admin/list.do"; 
		// getContextPath : 서블릿컨텍스트(ServletExam)의 이름을 가져오는 메소드
		resp.sendRedirect(redirectUrl);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	

}
