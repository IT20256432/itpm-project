 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		String Vehicleid=request.getParameter("Vehicleid");
   		String Vehiclename =request.getParameter("vehiclename");
		String chassisno=request.getParameter("chassisno");
		String shop=request.getParameter("shop");
		String date=request.getParameter("date");
		String maintainfee=request.getParameter("maintainfee");
		String imagelink=request.getParameter("imagelink");

%>
<form action="delete" method="post">
	
	Vehicle Id <input type="text" name="vid" value="<%=Vehicleid%>" readonly> <br>
	Vehicle Name <input type="text" name="vname" value="<%=Vehiclename%>"readonly> <br>
	Chassis No 	<input type="password" name="cno" value="<%=chassisno%>"readonly> <br>
	Shop <input type="text" name="shop" value="<%=shop%>"readonly> <br>
	Date <input type="text" name="date" value="<%=date%>"readonly> <br>
	Maintain Fee <input type="text" name="mfee" value="<%=maintainfee%>"readonly> <br>
	Image Link <input type="text" name="ilink" value="<%=imagelink%>"readonly> <br>
	
	<input type="submit" name="sumbit" value="Delete record">
		
</form>

</body>
</html>