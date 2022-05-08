<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>

  <link href="/RentalService/table.css" rel="stylesheet" media="all">
  
   <link href="/RentalService/footer.css" rel="stylesheet" media="all">
    
   <link href="/RentalService/header.css" rel="stylesheet" media="all">
</head>

<body>
		<div class="container">
	<table>
	
	<c:forEach var="vh" items="${vDetails}">
	
	<c:set var="vid" value="${vh.vid}"/>
	<c:set var="vname" value="${vh.vehicleName}"/>
	<c:set var="cno" value="${vh.chassisno}"/>
	<c:set var="shop" value="${vh.shop}"/>
	<c:set var="date" value="${vh.date}"/>
	<c:set var="mfee" value="${vh.maintainfee}"/>
	<c:set var="ilink" value="${vh.imagelink}"/>	
	
		<thead>
			<tr>
				<th>Vehicle Id</th>
				<th>Vehicle Name</th>
				<th>Chassis No</th>
				<th>Shop</th>
				<th>Date</th>
				<th>Maintain Fee</th>
				<th>Image Link</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${vh.vid}</td>
				<td>${vh.vehicleName}</td>
				<td>${vh.chassisno}</td>
				<td>${vh.shop}</td>
				<td>${vh.date}</td>
				<td>${vh.maintainfee}</td>
				<td>${vh.imagelink}</td>
			</tr>

		</tbody>
		</c:forEach>
	</table>

	<c:url value="updateMDetiails.jsp" var="vmupdate">
		<c:param name="Vehicleid" value="${vid}"/>
		<c:param name="vehiclename" value="${vname}"/>
		<c:param name="chassisno" value="${cno}"/>
		<c:param name="shop" value="${shop}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="maintainfee" value="${mfee}"/>
		<c:param name="imagelink" value="${ilink}"/>
	</c:url>
  
	<a href="${vmupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	<br>
	
	<c:url value="deleteVMDetails.jsp" var="vmdelete">
		<c:param name="Vehicleid" value="${vid}"/>
		<c:param name="vehiclename" value="${vname}"/>
		<c:param name="chassisno" value="${cno}"/>
		<c:param name="shop" value="${shop}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="maintainfee" value="${mfee}"/>
		<c:param name="imagelink" value="${ilink}"/>
	</c:url>
	<a href="${vmdelete}">
	<input type="button" name="delete" value="Delete My Data">
	</a>
	
	<a href="vehivmreport.jsp">
	<input type="button" name="Show report" value="Show My Report">
	</a>

	</div>
</body>

</html>