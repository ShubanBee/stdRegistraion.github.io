package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dao.RegisterDAO;

@WebServlet("/delete")
public class deleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id=Integer.parseInt(request.getParameter("id"));
	System.out.println(id);
	   
	RegisterDAO d1=new RegisterDAO();
	String status=d1.deleteItemById(id);
	if(status.equals("success")) {
		response.sendRedirect("StudentsListController");
	}
	}

}
