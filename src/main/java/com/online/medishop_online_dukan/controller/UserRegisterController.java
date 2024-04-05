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

@WebServlet(value = "/userRegister")
public class UserRegisterController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		UserService service = new UserServiceImpl();
		
		String name = req.getParameter("userName");
		String email = req.getParameter("userEmail");
		String password = req.getParameter("userPassword");
		String rPassword = req.getParameter("repeatPassword");
		User user = new User(name, email, password);
		
		User user2=service.saveUserService(user);
		
		if(user2==null) {
			req.setAttribute("msg", "Registered-Successfully");
			req.getRequestDispatcher("user-login.jsp").forward(req, resp);
		}else {
			req.setAttribute("msg", "You are not registered");
			
			req.getRequestDispatcher("user-register.jsp").forward(req, resp);
		}
		
	}
}
