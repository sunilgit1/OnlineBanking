<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />

<jsp:include page="MainHeader.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.error {
	color: red;
}
 .menu1 h3
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-left: 200px;
  margin-top: -90px;
} 
</style>
</head>
<body>
<div class="container">
	
		<div class="menu1">
		<h3><b><u>Registration Form</u></b></h3>
		</div>
		<form action="save" method="get" class="form-horizontal">
			<form:hidden path="Mid" />
			<div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">
					<input type="text" name="firstName" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					<input type="text" name="lastName" class="form-control" >
				</div></div>
				
				<div class="form-group">
				<label class="col-sm-2 control-label">Gmail</label>
				<div class="col-sm-4">
					<input type="gmail" name="gmail" class="form-control" >
				</div>
				</div>
				<div class="form-group">
				<label class="col-sm-2 control-label">ContactNumber</label>
				<div class="col-sm-4">
					<input type="number" name="mobileNo" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Role</label>
				<div class="col-sm-4">
					<select name="role" class="form-control">
						<option value="0">--SELECT--</option>
						<option value="management">MANAGEMENT</option>
						<option value="casier">CASIER</option>
						<option value="manager">MANAGER</option>
						<option value="helpdesk">HELPDESK</option>

					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">UserName</label>
				<div class="col-sm-4">
					<input type="text" name="userName" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="text" name="password" class="form-control" id="id">
				</div>
				<label form:errors path="password" cssClass="error"></label>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="Submit">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form>
</body>
</html>