package admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.service.AdminServiceImpl;
import admin.service.IAdminService;
import admin.vo.AdminVO;
import member.dao.MemberDAOImpl;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/adminLogin.do")
public class AdminLoginController extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;
	 
	  public AdminLoginController() {
		    super();
	  }

	// get 방식으로 호출할 경우
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// jsp에서 입력한 값들 받아오기
		String adminId = req.getParameter("adminId");
		String adminPw = req.getParameter("adminPw");

		// 1. 서비스 객체 생성하기
		IAdminService adminService = AdminServiceImpl.getInstance();

		// 2. 이메일, 비밀번호 정보 조회하기 (sql)
		AdminVO av = adminService.adminLogin(adminId, adminPw);
		
		if (av==null) { // 근데 조회했는데 mv에 null 값이 담기면 (아이디, 비밀번호 둘 중 하나라도 틀리면) 로그인에 실패
			System.out.println("로그인에 실패했어요.");
			try {
				resp.getWriter().write("{\"result\": \"ok\"}");
			} catch (IOException e) {
				e.printStackTrace();
			}
//			String redirectUrl = req.getContextPath() + "/jsp/member/login.jsp"; // 로그인 실패하면 띄워주는 페이지임.
//			resp.sendRedirect(redirectUrl);
		} else { // 이 경우에는 mv의 값(메일, 패스워드)이 DB에 있으므로  로그인에 성공
			System.out.println("로그인에 성공했어요."); // 이 아래에 세션들 등 넣어보기
			
			req.setAttribute("av", av);
			
			HttpSession session = req.getSession();
			session.setAttribute("adminId", adminId);
			session.setAttribute("adminPw", adminPw);
			// 세션에 값 세팅할 때 아이디 뿐 아니라 비밀번호도 같이 저장하는 것이... 좋은가?
			
			String test = (String)session.getAttribute("adminId");
			System.out.println("세션에 이메일(아이디)" + adminId + "가 잘 담겼어요.");
			// 세션에 값이 잘 담겻어요..
			
			// 이 아래부터 ajax로 처리해야 한다. 
			
//			String redirectUrl = req.getContextPath() + "/jsp/member/afterLogin.jsp"; // 로그인 성공하면 띄워주는 페이지임.
			String redirectUrl = req.getContextPath() + "/backindex.do"; // 로그인 성공하면 띄워주는 페이지임.
			// getContextPath : 서블릿컨텍스트의 이름을 가져오는 메소드
			resp.sendRedirect(redirectUrl);
			
		}

	}
		
	// post 방식으로 호출할 경우
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    doGet(req, resp);
		 }

}
