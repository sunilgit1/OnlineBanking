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
				<b><u>Update Staff Details</u></b>
			</h3>
		</div>

		<spring:url value="/updateStaf" var="updateStafURL" />
		<form:form action="${updateStafURL}" class="form-horizontal" modelAttribute="info" method="Post">
			 <form:hidden path="Mid" /> 
			  <div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">		 
					<form:input path="firstName" class="form-control"/>
					<label form:errors path="fname" cssClass="error"></label>
			</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					<form:input path="lastName" class="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">ContactNumber</label>
				<div class="col-sm-4">
					<form:input path="mobileNo" class="form-control"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">gmail</label>
				<div class="col-sm-4">
					<form:input path="gmail" class="form-control"/>
				</div>
			</div>
			
			<div class="form-group">
		<label class="col-sm-2 control-label"> Role</label>
		<div class="col-sm-4">
		
			<label class="radio-inline"> <form:radiobutton path="role"
					value="manager" checked="checked" /> Manager
			</label> <label class="radio-inline"> <form:radiobutton path="role"
					value="casier" /> Casier
			</label>
			<label class="radio-inline"> <form:radiobutton path="role"
					value="management" /> Management
			</label>
			<label class="radio-inline"> <form:radiobutton path="role"
					value="helpdesk" /> HelpDesk
			</label>
		</div>
	</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">UserName</label>
				<div class="col-sm-4">
					<form:input path="userName" class="form-control"/>
				</div>
			</div>
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