package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Module_4_Q2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		ServletContext scot = getServletContext();
         String example1 = scot.getInitParameter("context1");
         
     	out.print("<p>" + example1 + "</p>");
		out.print("<br>");
		String example2 = scot.getInitParameter("context2");

     	out.print("<p>" + example2 + "</p>");
		
	}

}
