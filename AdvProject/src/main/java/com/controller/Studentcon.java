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

/**
 * Servlet implementation class Studentcon
 */

@WebServlet("/add")
public class Studentcon extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Studentcon() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In controller");
		String firstName=request.getParameter("firstname");
		String lastName=request.getParameter("lastname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		System.out.println(firstName);
		Student rm=new Student();
		rm.setFirstName(firstName);
		rm.setLastName(lastName);
		rm.setEmail(email);
		rm.setPassword(password);
		System.out.println(rm);
		RegisterDAO rd=new RegisterDAO();
		String status=rd.insertData(rm);
		System.out.println(status);
		if(status.equals("success")) {
			System.out.println("data inserted");
			RequestDispatcher r=request.getRequestDispatcher("login.html");
			r.forward(request, response);
		}else {
			System.out.println("Somthing went Worng!!!!");
			RequestDispatcher r=request.getRequestDispatcher("index.html");
			r.forward(request, response);
		}
	
	}

}
