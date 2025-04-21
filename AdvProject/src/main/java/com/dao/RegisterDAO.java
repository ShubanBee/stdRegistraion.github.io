package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Student;

public class RegisterDAO {
	Connection con;
	
	String status="fail";
	
	public String insertData(Student rm) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps=con.prepareStatement("insert into Students(firstname, lastname, email, password) values(?,?,?,?)");
			ps.setString(1,rm.getFirstName());
			ps.setString(2,rm.getLastName());
			ps.setString(3,rm.getEmail());
			ps.setString(4,rm.getPassword());
			int n=ps.executeUpdate();
			System.out.println("hello"+n);
			if(n>0) {
				status="success";
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public Student Authntication(String email,String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps=con.prepareStatement("select * from Students where email=? and password=?");
			ps.setString(1,email);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				return new Student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}
	public List<Student> getAllStu(){
		List<Student> list=new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps=con.prepareStatement("select * from Students");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Student e1=new Student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				list.add(e1);
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return list;
		
	}
	
	public String deleteItemById(int id) {
		String status="fail";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps=con.prepareStatement("delete from Students where id=?");
			ps.setInt(1, id);
			int n=ps.executeUpdate();
			if(n>0) {
				status="success";
			}
		}catch(Exception e1) {
			System.out.println(e1);
		}
		return status;
	}
	public Student updateStuById(int id) {
		Student st=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps=con.prepareStatement("select * from Students where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				st=new Student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return st;
		
	}
	public String getupdateEmp(Student e) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("JDBC:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps=con.prepareStatement("update Students set firstname=?,lastname=?,email=?,password=? where id=?");
			ps.setString(1,e.getFirstName());
			ps.setString(2,e.getLastName());
			ps.setString(3,e.getEmail());
			ps.setString(4,e.getPassword());
			ps.setInt(5, e.getId());
			int n=ps.executeUpdate();
			System.out.println(n);
			if(n>0) {
				status="success";
			}
			
		}catch(Exception e1) {
			System.out.println(e1);
		}
		return status;
		
	}

}
