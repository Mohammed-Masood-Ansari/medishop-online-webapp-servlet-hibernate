package com.online.medishop_online_dukan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.medishop_online_dukan.dao.AdminDao;
import com.online.medishop_online_dukan.daoimpl.AdminDaoImpl;
import com.online.medishop_online_dukan.dto.Admin;

@WebServlet(value = "/loginAdmin")
public class AdminLoginController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession  httpSession = req.getSession();
		
		AdminDao adminDao =  new AdminDaoImpl();
		
		String adminEmail = req.getParameter("adminEmail");
		String adminPassword = req.getParameter("adminPassword");
		
		Admin admin = adminDao.getAdminByEmailDao(adminEmail);
		
		if(admin!=null) {
			
			if(admin.getPassword().equals(adminPassword)) {
				httpSession.setAttribute("adminSession", admin.getEmail());
				req.getRequestDispatcher("admin-home.jsp").forward(req, resp);
			}else {
				req.setAttribute("adminMsg", "admin password is in correct");
				req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
			}
			
		}else {
			req.setAttribute("adminMsg", "admin email is in correct");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
		}
	}
}
