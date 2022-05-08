package com.vehiclem;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MaintainDBUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<Vehicle> validate(String vehicleName,String chassisno){
		
		ArrayList<Vehicle> vh=new ArrayList<>();
		
		try {
			
			con=DBConnector.getConnection();
			stmt=con.createStatement();
			
			String sql="select *from vehicle where vehiclename='"+vehicleName+"' and chassisno='"+chassisno+"'";
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int vid=rs.getInt(1);
				String vehiclename=rs.getString(2);
				String cno=rs.getString(3);
				String shop=rs.getString(4);
				String date=rs.getString(5);
				String maintainfee=rs.getString(6);
				String imageink=rs.getString(7);
				
				
			Vehicle v =new Vehicle(vid,vehiclename,cno,shop,date,maintainfee,imageink);	
			vh.add(v);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		return vh;
		
	}
	
	public static boolean insertmdetails(String vehiclename, String chassisno, String shop, String date,String maintainfee, String imagelink) {
			
		boolean isSuccess=false;
		

		
		try {
			
			con=DBConnector.getConnection();
			stmt=con.createStatement();
			
			String sql="Insert into vehicle values(0,'"+vehiclename+"','"+chassisno+"','"+shop+"','"+date+"','"+maintainfee+"','"+imagelink+"')";
			int rs=stmt.executeUpdate(sql);	
			
			if(rs>0) {
				isSuccess=true;
			} else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	
	}
	
	public static boolean updatevm(String vehicleid,String vehiclename,String chassisno,String shop,String date,String maintainfee,String imagelink ) {
		
		boolean isSuccess = false;
		try {
			con=DBConnector.getConnection();
			stmt=con.createStatement();
			
			String sql="update vehicle set vehiclename='"+vehiclename+"',chassisno='"+chassisno+"',shop='"+shop+"',date='"+date+"',maintainfee='"+maintainfee+"',imagelink='"+imagelink+"'" + "where vid='"+vehicleid+"'";
			
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}	
	
	public static List<Vehicle> getVehicleVMDetails(String vid){
		
		int convertedID=Integer.parseInt(vid);
		
		ArrayList<Vehicle> vh=new ArrayList<>();
		
		try {
			con=DBConnector.getConnection();
			stmt=con.createStatement();
			
			String sql= "select * from vehicle where vid='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while (rs.next()) {
				int vehicleid=rs.getInt(1);
				String vehiclename=rs.getString(2);
				String cno=rs.getString(3);
				String shop=rs.getString(4);
				String date=rs.getString(5);
				String maintainfee=rs.getString(6);
				String imagelink=rs.getString(7);
				
				Vehicle v=new Vehicle(vehicleid,vehiclename,cno,shop,date,maintainfee,imagelink);
				vh.add(v);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return vh;
	}	
	
	public static boolean deleteVM(String vid) {
		int convID=Integer.parseInt(vid);
		
		boolean isSuccess = false;
		try {
			
			con=DBConnector.getConnection();
			stmt=con.createStatement();
			
			String sql= "delete from vehicle where vid='"+convID+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
}

