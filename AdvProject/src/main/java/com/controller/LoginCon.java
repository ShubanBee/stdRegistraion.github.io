package com.controller;

import java.io.IOException;

import com.dao.RegisterDAO;
import com.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/loginController")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		RegisterDAO rd=new RegisterDAO();
		
		HttpSession session=request.getSession();
		Student st=rd.Authntication(email, password);
		
		
		if(st!=null) {
			session.setAttribute("st", st);
			System.out.println("data inserted");
			RequestDispatcher r=request.getRequestDispatcher("Welcome.jsp");
			r.forward(request, response);
		}else {
			System.out.println("Somthing went Worng!!!!");
			RequestDispatcher r=request.getRequestDispatcher("login.html");
			r.forward(request, response);
		}
	}

}
