package com.contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Studentdao;

@WebServlet("/DELETE")
public class DELETE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Studentdao dao = new Studentdao();
		int status = dao.delete(id);

		if (status > 0) {
		    // Use RequestDispatcher to forward to delete.jsp
		    request.setAttribute("data", dao);  // If 'data' is needed in delete.jsp
		    RequestDispatcher dispatcher = request.getRequestDispatcher("delete.jsp");
		    dispatcher.forward(request, response);
		} else {
			response.setContentType("text/html");
			response.getWriter().println("Failed to delete user with ID: " + id);
		}
	}
}
