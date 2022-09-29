package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;

@WebServlet("/delete.do")
public class DeleteMemberController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 현재 로그인하고 있는 회원의 세션 가져오기 (Pw+Mail)
		HttpSession session=req.getSession(); // 새 세션이 생성되지 않고 기존에 있는 걸 가져오게 된다.
		String memPwSession = (String)session.getAttribute("memPw");
		String memMail = (String)session.getAttribute("memMail");
		
		// 폼에 입력한 비밀번호 값 받아오기
		String memPwForm = req.getParameter("memPw"); // 비밀번호 값 받아오기
		
		// 세션의 pw값과 폼으로 받아온 pw값을 비교하기
		if (memPwSession.equals(memPwForm)) { // 일치하면 탈퇴 처리
			System.out.println("비밀번호가 일치합니다.");
			
			// 서비스 객체 생성하기
			IMemberService memService = MemberServiceImpl.getInstance();
			
			int cnt = memService.deleteMember(memMail);
			
			String msg = "";
			
			if(cnt > 0) {
				msg = "성공";
			}else {
				msg = "실패";
			}
			
			resp.getWriter().write("{\"result\": \"ok\"}");
			
			session.invalidate();
			
		} else { // 일치하지 않으면 오류 메세지
			System.out.println("비밀번호가 일치하지 않아요.");
			try {
				resp.getWriter().write("{\"result\": \"fail\"}");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
