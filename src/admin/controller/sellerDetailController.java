package admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminServiceImpl;
import admin.service.IAdminService;
import admin.vo.instructorVO;

/**
 * Servlet implementation class qnaDetailController
 */
@WebServlet("/sellerDetail.do")
public class sellerDetailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String instructorId = request.getParameter("instructorId");
		
		IAdminService adminService = AdminServiceImpl.getInstance();
		
		instructorVO instVO = adminService.getSellerDetail(instructorId);
		
		
		request.setAttribute("instVO", instVO);
		
		request.getRequestDispatcher("/nest-backend/page-sellers-detail.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
