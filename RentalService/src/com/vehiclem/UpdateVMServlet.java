package com.vehiclem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateVMServlet")
public class UpdateVMServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vehicleid=request.getParameter("vid");
		String vehiclename=request.getParameter("vname");
		String chassisno=request.getParameter("cno");
		String shop=request.getParameter("shop");
		String date=request.getParameter("date");
		String maintainfee=request.getParameter("mfee");
		String imagelink=request.getParameter("ilink");
		
		boolean isTrue;
		
		isTrue=MaintainDBUtil.updatevm(vehicleid, vehiclename, chassisno, shop, date, maintainfee, imagelink);
		
		if(isTrue==true) {
			
			List<Vehicle> vDetails=MaintainDBUtil.getVehicleVMDetails(vehicleid);
			request.setAttribute("vDetails", vDetails);
			
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else 
		{
			List<Vehicle> vDetails=MaintainDBUtil.getVehicleVMDetails(vehicleid);
			request.setAttribute("vDetails", vDetails);
		
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);		
		}	
	}
}
