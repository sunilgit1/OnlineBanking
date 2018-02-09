<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<spring:url value= "../resources/css/bootstrap.min.css" var="bootstrapURL1"/>
    <spring:url value= "../resources/css/mytemplate.css" var="mytemplateURL1"/>
    
    <link href="${bootstrapURL1}" rel="stylesheet">
     <link href="${mytemplateURL1}" rel="stylesheet">

<style type="text/css">
.error {
	color: red;
}
 .menu1 h3
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-left: 200px;
  
} 
</style>
</head>
<body>

<div class="container">
	<br/>
	<br/>
		<div class="menu1">
			<h3>
				<b><u>Deposit Money</u></b>
			</h3>
		</div>

		<spring:url value="/updateDept" var="updateDeptURL" />
		<form:form action="${updateDeptURL}" class="form-horizontal" modelAttribute="info" method="Post">
			 <form:hidden path="ACNum" /> 
			  <div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">		 
					<b>${info.fName}
					<label form:errors path="fname" cssClass="error"></label>
			</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					${info.lName} 
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">FatherName</label>
				<div class="col-sm-4">
					${info.fatherName}
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">A/c-Number</label>
				<div class="col-sm-4">
					${info.ACNum}
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">CurrentBalance</label>
				<div class="col-sm-4">
					<form:input path="amount" class="form-control"/>
				</div>
			</div>
			
			<%-- <div class="form-group">
				<label class="col-sm-2 control-label">Deposit</label>
				<div class="col-sm-4">
					<form:input path="amount" class="form-control"/>
				</div>
			</div> --%>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="Update">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form:form>



	</div>
</body>
</html>