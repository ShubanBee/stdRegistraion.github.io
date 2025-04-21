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
@WebServlet("/ViewController")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		RegisterDAO rd=new RegisterDAO();
		Student stu=rd.updateStuById(id);
		System.out.println(stu);
		request.setAttribute("Students", stu);
		RequestDispatcher r=request.getRequestDispatcher("update.jsp");
		r.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		RegisterDAO rd1=new RegisterDAO();
		Student s=new Student();
		s.setId(id);
		s.setFirstName(firstname);
		s.setLastName(lastname);
		s.setEmail(email);
		s.setPassword(password);
		System.out.println(s);
		
		String status=rd1.getupdateEmp(s);
		System.out.println(status);
		if(status.equals("success")) {
			response.sendRedirect("view.jsp");
		}
	}

}
