<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="MgmntHeader.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
 .menu1 h3
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-top: 70px;
} 
</style>

</head>
<body>

<body>

	<div class="container">

		<div class="menu1">
			<h3>
				<b><u>Staff Details</u></b>
			</h3>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Uid</th>
						<th>FirstName</th>
						<th>LastName</th>
						<th>ContactNumber</th>
						<th>Gmail</th>
						<th>Role</th>
						<th>UserName</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<body>
					<c:forEach items="${info}" var="info">
						<tr>
							 <td>${info.mid}</td> 
							<td>${info.firstName}</td>
							<td>${info.lastName}</td>
							<td>${info.mobileNo}</td>
							<td>${info.gmail}</td>
							<td>${info.role}</td>
							<td>${info.userName}</td>
							<td>
								 <%--  <a href="<c:url value='/delete/${info.Mid}'/>">Delete</a>  --%>
								<spring:url value="/delete/${info.mid}" var="deleteurl" />
								<button type="button" class="btn btn-danger"
									onclick="location.href='${deleteurl}'">Delete</button>
							</td>
							<td> 
					 <spring:url value="/editStaf/${info.mid}" var="editstafurl"/> 
					<button type="button" class="btn btn-success"onclick="location.href='${editstafurl}'">Update</button></td> 
						<%--
							 <td>
					 <spring:url value="/details/${info.regno}" var="detailaURL"/> 
					<button type="button" class="btn btn-success"onclick="location.href='${detailaURL}'">Details</button></td> --%> 
						</tr> 
					</c:forEach>
				</body>
			</table>
			<a href="save"><h4>For More Registration</h4></a>
		</div>


	</div>
</body>


</body>
</html>