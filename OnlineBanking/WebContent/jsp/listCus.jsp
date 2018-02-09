<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="MgmntHeader.jsp" />
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

	<div class="container">



<div class="menu1">
			<h3>
				<b><u>Registered Customer</u></b>
			</h3>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>FirstName</th>
						<th>LastName</th>
						<th>FatherName</th>
						<!-- <th>Mothername</th> -->
						<th>DOB</th>
						<th>Gender</th>
						<th>Address</th>
						<th>ContactNo</th>
						<th>IdType</th>
						<th>MaritalStatus</th>
						<th>A/C-No</th>
						<th>Amount</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<body>
					<c:forEach items="${info}" var="info">
						<tr> 
							 <td>${info.fName}</td>  
							<td>${info.lName}</td>
							<td>${info.fatherName}</td>
							<%-- <td>${info.motherName}</td> --%>
							<td>${info.dob}</td>
							<td>${info.gender}</td>
							<td>${info.address}</td>
							<td>${info.contactNo}</td>
							<td>${info.idType}</td>
							<td>${info.maritalStatus}</td>
							<td>${info.ACNum}</td>
							<td>${info.amount}</td>
							<td>
								 <%--  <a href="<c:url value='/delete/${info.cId}'/>">Deposit</a>  --%>
								<spring:url value="/editDep/${info.ACNum}" var="editDeptUrl" />
								<button type="button" class="btn btn-success"
									onclick="location.href='${editDeptUrl}'">Deposit</button>
							</td>
							<%--
							<td> 
					 <spring:url value="/edit1/${info.mobNo}" var="editurl"/> 
					<button type="button" class="btn btn-success"onclick="location.href='${editurl}'">Update</button></td> 

							<td>
					 <spring:url value="/details/${info.regno}" var="detailaURL"/> 
					<button type="button" class="btn btn-success"onclick="location.href='${detailaURL}'">Details</button></td>  --%>
						</tr> 
					</c:forEach>
				</body>
			</table>
			<a href="saveCus"><h4>For More Registration</h4></a>
		</div>


	</div>
</body>


</body>
</html>