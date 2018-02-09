<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%-- <spring:url value="resources/css/myapps.css" var="myappsURL" />
<link href="${myappsURL}" rel="stylesheet"> --%>
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
 .menu1 h3,h5
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-left: 200px;
  margin-top: 0px;
} 
</style>
</head>
<body>

<div class="container">
	
		<div class="menu1">
		<h3><b><u>LogIn Form</u></b></h3>
		</div>
		
		<form action="login" class="form-horizontal" method="get">
			<form:hidden path="Mid" />
			<div class="form-group">
				<label class="col-sm-2 control-label">UserName</label>
				<div class="col-sm-4">
					<input type="text" name="userName" class="form-control" id="id">
				</div>
				<label form:errors path="gmail" cssClass="error"></label>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Role</label>
				<div class="col-sm-4">
				<select name="role" class="form-control" >
				<option value="0">--SELECT--</option>
				<option value="management">MANAGEMENT</option>
				<option value="casier">CASIER</option>
				<option value="manager">MANAGER</option>
				<option value="helpdesk">HELPDESK</option>
				
				</select>	
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
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
						
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="SignIn">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form>
</body>
</html>