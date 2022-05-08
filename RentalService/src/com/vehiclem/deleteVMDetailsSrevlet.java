package com.vehiclem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteVMDetailsSrevlet")
public class deleteVMDetailsSrevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String vehicleid=request.getParameter("vid");
		boolean isTrue;
		
		isTrue=MaintainDBUtil.deleteVM(vehicleid);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher =request.getRequestDispatcher("vminsert.jsp");
			dispatcher.forward(request,response);
		}
		else {
			List<Vehicle> vDeatils=MaintainDBUtil.getVehicleVMDetails(vehicleid);
			request.setAttribute("vDeatils", vDeatils);
			
			
			RequestDispatcher dispatcher =request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request,response);
			
		}
		
		
	}

}
