package com.online.medishop_online_dukan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online.medishop_online_dukan.dto.User;
import com.online.medishop_online_dukan.service.UserService;
import com.online.medishop_online_dukan.serviceimpl.UserServiceImpl;

@WebServlet(value = "/userLogin")
public class UserLoginController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   
		UserService service = new UserServiceImpl();
		
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");
		
		
		User user=service.getUserByEmailService(userEmail);
		
		if(user!=null) {
			
			if(user.getPassword().equals(userPassword)) {
				
				req.getRequestDispatcher("user-home.jsp").forward(req, resp);
				
			}else {
				req.setAttribute("msg", "password is incorrect please check once");
				req.getRequestDispatcher("user-login.jsp").forward(req, resp);
			}
			
		}else {
			req.setAttribute("msg", "email is incorrect please check once");
			req.getRequestDispatcher("user-login.jsp").forward(req, resp);
		}
	}
}
