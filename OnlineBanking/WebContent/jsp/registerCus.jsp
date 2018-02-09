<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <spring:url value= "resources/css/bootstrap.min.css" var="bootstrapURL"/> 
    
    <link href="${bootstrapURL}" rel="stylesheet">
    
    <style type="text/css">
 .menu1 h3
{
font-family: "Brush Script MT";
  font-size: 30px;
  margin-top: 70px;
  margin-left: 240px;
} 
</style>

</head>
<body>

<div class="menu1">
			<h3>
				<b><u>Registration Form</u></b>
			</h3>
		</div>
		  <spring:url value="/saveCus" var="saveCusURL" />  
		<form action="saveCus" class="form-horizontal" modelAttribute="info" method="get">
			 <div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">
					<input type="text" name=fName class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					<input type="text" name="lName" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">FatherName</label>
				<div class="col-sm-4">
					<input type="text" name="fatherName" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">DOB</label>
				<div class="col-sm-4">
					<input type="date" name="dob" class="form-control" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <input type="radio" name="gender" value="male" > MALE
					</label> <label class="radio-inline"> <input type="radio"
						name="gender"  value="female" >
						FEMALE
					</label>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Address</label>
				<div class="col-sm-4">
					
					<textarea name="address" class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">ContactNumber</label>
				<div class="col-sm-4">
					<input type="number" name="contactNo" class="form-control" 	>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">IdType</label>
				<div class="col-sm-4">
				<select name="idType" class="form-control" >
				<option value="0">----Select----</option>
				<option value="AadharCard">--AadharCard--</option>
				<option value="DrivingLicence">DrivingLicence</option>
				<option value="PanCard">PanCard</option>
				<option value="VoterIdCard">VoterIdCard</option>
				<option value="Other">Other</option>
				</select>	
				</div>
			</div>
			
			  <div class="form-group">
				<label class="col-sm-2 control-label">IdNumber</label>
				<div class="col-sm-4">
					<input type="number" name="idNum" class="form-control" >
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">MaritalStatus</label>
				<div class="col-sm-4">
				<select name="maritalStatus" class="form-control" >
				<option value="0">--SELECT--</option>
				<option value="Married">Married</option>
				<option value="UnMarried">UnMarried</option>
				<option value="Divorced">Divorced</option>
				</select>	
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">EmpDescription</label>
				<div class="col-sm-4">
					<input type="text" name="EmpDescription" class="form-control" >
				</div>
				<!-- <label form:errors path="password" cssClass="error"></label> -->
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">A/C-Number</label>
				<div class="col-sm-4">
					<input type="number" name="ACNum" class="form-control" >
				</div>
				
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Amount</label>
				<div class="col-sm-4">
					<input type="number" name="amount" class="form-control" >
				</div>
				
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="Submit">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form>


	</div>

</body>
</html>