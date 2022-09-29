package cart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lecture.service.ILectureService;
import lecture.service.LectureServiceImpl;
import lecture.vo.LectureVO;

@WebServlet("/addCart.do")
public class addTOCart extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String lecId = req.getParameter("lecId");
		System.out.println(lecId);
		
		// 아이디가 없으면
		if(lecId==null || lecId.trim().equals("")){
			// product.jsp로 되돌아간다.
			resp.sendRedirect(req.getContextPath()+"/lecture/list.do");
			// 프로그램 종료
			return;
		}
		
		// 상품 저장소 객체 생성
		ILectureService service = LectureServiceImpl.getinstance();
		
		
		// 상품 아이디에 해당하는 정보를 얻어와보자
		LectureVO product = service.getLecture2(lecId);
		// id의 값이 P9999 이런 경우 상품이 없다.
		if(product == null){
			resp.sendRedirect("/exceptionNoProductId.jsp");
		}
		
		// 모든 상품을 가져와보자
		List<LectureVO> lecList = service.getAllLectureList2();
		LectureVO lec = new LectureVO();
		for(int i=0; i<lecList.size(); i++){
		// 요청 파라미터 아이디의 상품이 존재하는지 검사
		//  goodsList에서 하나를 끄집어내면 Product타입 데이터가 나옴!
			lec = lecList.get(i);
			if(lec.getLecId().equals(lecId)){
				break;
			}
		}
		
		
		// 요청 파라미터 아이디의 상품을 담은 장바구니를 초기화
		// 세션 : cartlist를 얻어와 ArrayList 객체에 저장. object형이라 형변환 필요
		ArrayList<LectureVO> list = (ArrayList<LectureVO>)session.getAttribute("cartlist");

		// 만약 cartlist라는 세션 정보가 없다면 ArrayList객체를 생성하고 cartlist세션 생성
		if(list==null){
			list = new ArrayList<LectureVO>();
		}else {			
			for (int i = 0; i < list.size(); i++) {
				if(lecId.equals(list.get(i).getLecId())) {
					list.remove(i);
				}
			}
		}
		
		list.add(lec);
		
		session.setAttribute("cartlist", list);
		
		// list : 장바구니에 담긴 상품 목록
		int cnt = 0;
		LectureVO lecs = new LectureVO();
		for(int i=0; i<list.size(); i++){
			lecs = list.get(i);
		}

		resp.sendRedirect(req.getContextPath()+"/lecture/list.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
