package com.vehiclem;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
		
	private static String url="jdbc:mysql://localhost:3306/rental";
	private static String username="root";
	private static String password="maliya";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,username,password);
			
		}
		catch(Exception e){
			System.out.println("Database connection is not success");
		}
		return con;
		
	}
	
	
	
}
