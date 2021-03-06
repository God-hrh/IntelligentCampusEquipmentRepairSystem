package com.store.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.store.service.EquipmentService;
import com.store.service.EquipmentServiceImpl;
import com.store.pojo.Equipment;

/**
 * Servlet implementation class UpdateEquipmentServlet
 */
@WebServlet("/UpdateEquipmentServlet")
public class EquipmentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String equipment_id = request.getParameter("equipment_id");
		String equipment_name = request.getParameter("equipment_name");
		String equipment_type = request.getParameter("equipment_type");
		String createtime = request.getParameter("createtime");
		String responsible_person = request.getParameter("responsible_person");
		String remark = request.getParameter("remark");
		
		Equipment equipment = new Equipment();
		equipment.setId(id);
		equipment.setEquipment_id(equipment_id);
		equipment.setEquipment_name(equipment_name);
		equipment.setEquipment_type(equipment_type);
		equipment.setCreatetime(createtime);
		equipment.setResponsible_person(responsible_person);
		equipment.setRemark(remark);
		System.out.println(equipment);
		
		EquipmentService e = new EquipmentServiceImpl();
		e.updateEquipment(equipment);
		request.getRequestDispatcher("EquipmentServlet").forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
