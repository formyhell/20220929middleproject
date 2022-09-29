package member.controller;

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

import member.dao.MemberDAOImpl;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/member/login.do")
public class LoginMemberController extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;
	 
	  public LoginMemberController() {
		    super();
		  }

	// get 방식으로 호출할 경우
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// jsp에서 입력한 값들 받아오기
		String memMail = req.getParameter("memMail");
		String memPw = req.getParameter("memPw");

		// 1. 서비스 객체 생성하기
		IMemberService memService = MemberServiceImpl.getInstance();

		// 2. 이메일, 비밀번호 정보 조회해서 mv 객체에 담아오기(sql)
		
		MemberVO mv = memService.memberLogin(memMail, memPw);
		
//		System.out.println(mv.getThYn());
				
		// MemberVO thYn = memService.memberthYn(thYn);
		
		if (mv == null) { // 근데 조회했는데 mv에 null 값이 담기면 (즉 아이디, 비밀번호 둘 중 하나라도 틀리면) 로그인 실패
			System.out.println("로그인에 실패했어요.");
			try {
				resp.getWriter().write("{\"result\": \"fail\"}"); // jsp의 ajax에 fail 전달하여 실패 메시지 화면에 띄워주기
			} catch (IOException e) {
				e.printStackTrace();
			}
//			String redirectUrl = req.getContextPath() + "/jsp/member/login.jsp"; // 로그인 실패하면 띄워주는 페이지임.
//			resp.sendRedirect(redirectUrl);
			
		} else { // 이 경우에는 mv의 값(메일, 패스워드)이 DB에 있으므로  로그인에 성공
			System.out.println("로그인에 성공했어요."); // 이 아래에 세션들 등 넣어보기
			
			// 성공했을 때 분기 (y일때)
			
			req.setAttribute("mv", mv); // req 객체에 2.에서 받아온 객체 세팅 ... 아니 근데 나 이거 왜 한거임? 세팅만 해놓고 안 쓰는거 같은데?
			
			HttpSession session = req.getSession();
			session.setAttribute("memMail", memMail);
			session.setAttribute("memPw", memPw);
			session.setAttribute("thYn", mv.getThYn());
			// 세션에 값 세팅할 때 아이디 뿐 아니라 비밀번호도 같이 저장하는 것이... 좋은가?
			
			String test = (String)session.getAttribute("memMail");
			String test2 = (String)session.getAttribute("memPw");
			String test3 = (String)session.getAttribute("thYn");
			System.out.println("세션에 이메일(아이디)" + test + "가 잘 담겼어요.");
			System.out.println("세션에 비밀번호" + test2 + "가 잘 담겼어요.");
			System.out.println("세션에 강사정보" + test3 + "가 잘 담겼어요.");
			// 세션에 값이 잘 담겻어요..
			
			// 이 아래부터 ajax로 처리해야 한다. 
			
			resp.getWriter().write("{\"result\": \"ok\"}");
			
//			String redirectUrl = req.getContextPath() + "/jsp/member/afterLogin.jsp"; // 로그인 성공하면 띄워주는 페이지임.
//			String redirectUrl = req.getContextPath() + "/jsp/realMain.jsp"; // 로그인 성공하면 띄워주는 페이지임.
//			// getContextPath : 서블릿컨텍스트의 이름을 가져오는 메소드
//			resp.sendRedirect(redirectUrl);
			
			// 5월 19일
			// if (thYn.equals("Y")) {
			// 여기서 손댈 필요가 있나..? 없는것 같음
			// }
			
		}

	}
		
	// post 방식으로 호출할 경우
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    doGet(req, resp);
		 }

}