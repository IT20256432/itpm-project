<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String id = request.getParameter("vid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
//String connectionUrl = "jdbc:mysql://localhost:3306/rental?autoReconnect=true&useSSL=false";
String database = "";
String userid = "root";
String password = "maliya";
String brand = request.getParameter("vehiclename");
String NoOfVehicles = request.getParameter("NoOfVehicles");

try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css_v/bootstrap.min.css">
<title>Report</title>


<style>
.btn-huge{
    padding-top:20px;
    padding-bottom:20px;
}
body{

	background-color:#C0C0C0;
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

td, th {
  border: 1px solid #4d4d33;
  text-align: left;
  padding: 8px;
  background-color: #BAEEFB;
  font-size:large;
 
}

tr:nth-child(even) {
  background-color: #dddddd;
}
body{

	background-color:#C0C0C0;
}
</style>

</head>
<body>
	
	<br><br><br>
    <div id="repdetails">
        <h1>vehicle Maintain Details Report</h1><br><br>
        
        
        <table border="1" id="myvmreport">
            <tr>
                <th>Brand</th>
                <th>No Of Vehicles</th> 
                
                
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql =" SELECT vehiclename,COUNT(vid) AS NoOfVehicles FROM rental.vehicle GROUP BY vehiclename ORDER BY COUNT(vid) DESC";
            
              
           
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("vehiclename")%> </td>
                <td><%=resultSet.getString("NoOfVehicles")%> </td>
            </tr>
            
           
            
            <%
            	}
            		connection.close();
            	} catch (Exception e) {
            		e.printStackTrace();
            	}
            %>
        </table> 
        <br><br>
       <table border="2" id="myvmreport">
            <tr>
                <th>Total Amount for all vehicle maintainances</th>
               
  
                
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql =" SELECT SUM(maintainfee) AS totalvm FROM rental.vehicle ";
            
              
           
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("totalvm")%> </td>
            </tr>
            
           
            
            <%
            	}
            		connection.close();
            	} catch (Exception e) {
            		e.printStackTrace();
            	}
            %>
        </table> 
        
        <br><br>
 
   
        
        
        </div>
           
   <button onclick="print()" class="btn btn-warning" type="submit" name="submit" value="Submit"><b>Download PDF</b></button><br><br>

	<br><br><br>
	
	
    	
</body>
</html>