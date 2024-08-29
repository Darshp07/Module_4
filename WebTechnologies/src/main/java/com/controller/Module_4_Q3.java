package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class Module_4_Q3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("Fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String mobile =request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		
		System.out.println("first name :-"+fname);
		System.out.println("last name :-"+lname);
		System.out.println("Email id :-"+email);
		System.out.println("mobile number :-"+mobile);
		System.out.println("gender :-"+gender);
		System.out.println("your password :-"+password);
	    response.setContentType("text/html");
        response.getWriter().println("<h1 align=\"center\">Student Registered Successfully!</h1>");
	}

}
