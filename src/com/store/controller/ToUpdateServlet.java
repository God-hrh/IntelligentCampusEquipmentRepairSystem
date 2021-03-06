package com.store.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.store.pojo.SysPermission;
import com.store.service.PermissionService;
import com.store.service.PermissionServiceImpl;

/**
 * Servlet implementation class ToUpdateServlet
 */
@WebServlet("/ToUpdateServlet")
public class ToUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		PermissionService pService = new PermissionServiceImpl();
		
		SysPermission sysPermission = pService.querySysPermissionById(id);

		request.setAttribute("p", sysPermission);
		request.getRequestDispatcher("page/permission/edit.jsp").forward(request, response);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
