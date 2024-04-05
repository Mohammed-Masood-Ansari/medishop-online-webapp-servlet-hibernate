package com.online.medishop_online_dukan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.medishop_online_dukan.dto.Medicine;
import com.online.medishop_online_dukan.service.MedicineService;
import com.online.medishop_online_dukan.serviceimpl.MedicineServiceImpl;

@WebServlet(value = "/saveMedicine")
public class MedicineInsertController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		MedicineService medicineService = new MedicineServiceImpl();
		
		
		Medicine medicine = null;
		
		if(httpSession.getAttribute("adminSession")!=null) {
			
			medicineService.saveMedicineService(medicine);
			
		}else {
			req.setAttribute("adminMsg", "admin session is out please login again");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
		}
	}
}
