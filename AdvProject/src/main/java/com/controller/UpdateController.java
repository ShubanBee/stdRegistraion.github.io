package com.controller;

import java.io.IOException;

import com.dao.RegisterDAO;
import com.model.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id+"----------------------------------");
		   
		RegisterDAO d1=new RegisterDAO();
		Student s1=d1.updateStuById(id);
		System.out.println(s1);
		request.setAttribute("Students", s1);
		RequestDispatcher r=request.getRequestDispatcher("update.jsp");
		r.forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id=Integer.parseInt(request.getParameter("id"));
		String firstname=request.getParameter("Firstname");
		String lastname=request.getParameter("Lastname");
		String email=request.getParameter("mail");
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
		
		HttpSession s1=request.getSession();
		System.out.println("------------- check here login Student details");
		Student session =(Student)s1.getAttribute("st");
		System.out.println(" session object -------------------------");
		System.out.println(session);
		
		if(session.getId()==s.getId()) {
			session.setId(s.getId());
			session.setFirstName(s.getFirstName());
			session.setLastName(s.getLastName());
			session.setEmail(s.getEmail());
			session.setPassword(s.getPassword());
			System.out.println("---------update student details");
			RequestDispatcher r=request.getRequestDispatcher("view.jsp");
			r.forward(request, response);
		}else {
			response.sendRedirect("StudentsListController");
			
		}
	}

}

