package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.dao.RegisterDAO;
import com.model.Student;
@WebServlet("/StudentsListController")
public class StudentsListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello from list of Students");
		RegisterDAO d1=new RegisterDAO();
		List<Student> allstu=d1.getAllStu();
		System.out.println(allstu);
		request.setAttribute("allstu", allstu);
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	}

}
