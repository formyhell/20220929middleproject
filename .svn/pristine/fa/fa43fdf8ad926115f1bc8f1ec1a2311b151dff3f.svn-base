package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminServiceImpl;
import admin.service.IAdminService;
import admin.vo.AdminVO;

@WebServlet("/listAdmin.do")
public class AdminController extends HttpServlet{
	public AdminController() {}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IAdminService adminService = AdminServiceImpl.getInstance();
		
		// 2. 조회
		List<AdminVO> adminList = adminService.getAdmin();
		
		req.setAttribute("adminList", adminList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/jsp/admin/admin.jsp");
		rd.forward(req, resp);
		
		AdminVO av = new AdminVO();
		av.setAdminId(adminList.get(0).getAdminId());
		av.setAdminPw(adminList.get(0).getAdminPw());
		
		System.out.println(av.getAdminId() + av.getAdminPw());
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
