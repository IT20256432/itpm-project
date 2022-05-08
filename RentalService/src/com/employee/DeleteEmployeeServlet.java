package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue = false;
		
		isTrue = employeeDBUtil.deleteemployee(id, isTrue);
		
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("employeeinsert.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			
			List<employee> empDetails = employeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
