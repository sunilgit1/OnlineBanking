<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%--  <spring:url value= "resources/jscripts/validation.js" var="validateURL"/>
  <link href="${validateURL}" > --%>

<jsp:include page="header.jsp" />

<jsp:include page="MainHeader.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.2.1.js"></script>

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
		<form action="save" method="get" class="form-horizontal" id="registration_form">
			<form:hidden path="Mid" />
			<div class="form-group">
				<label class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-4">
					<input type="text" name="firstName" class="form-control" id="form_fname" required="">
					<span class="error_form" id="fname_error_message"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-4">
					<input type="text" name="lastName" class="form-control" id="form_lname" required="">
					<span class="error_form" id="lname_error_message"></span>
				</div></div>
				
				<div class="form-group">
				<label class="col-sm-2 control-label">Gmail</label>
				<div class="col-sm-4">
					<input type="gmail" name="gmail" class="form-control"  id="form_gmail" required="">
					<span class="error_form" id="gmail_error_message"></span>
				</div>
				</div>
				<div class="form-group">
				<label class="col-sm-2 control-label">ContactNumber</label>
				<div class="col-sm-4">
					<input type="number" name="mobileNo" class="form-control" id="form_contact" required="">
					<span class="error_form" id="contact_error_message"></span>
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
					<input type="text" name="userName" class="form-control"  required="">
					<span class="error_form" id="contact_error_message"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="text" name="password" class="form-control" id="form_password" required="">
					<span class="error_password" id="password_error_message"></span>
				</div>
		
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default" type="submit" value="Submit" id="submit">
					<input class="btn btn-default" type="submit" value="Reset">
				</div>
			</div>

		</form>
		
	 <script type="text/javascript">
      $(function() {

         $("#fname_error_message").hide();
         $("#lname_error_message").hide();
         $("#gmail_error_message").hide();
         $("#contact_error_message").hide();
        $("#password_error_message").hide();

         var error_fname = false;
         var error_lname = false;
         var error_gmail = false;
         var error_contact = false;
         var error_password = false;
    

         $("#form_fname").focusout(function(){
            check_fname();
         });
         $("#form_lname").focusout(function() {
            check_lname();
         });
         $("#form_gmail").focusout(function() {
            check_gmail();
         });
         $("#form_contact").focusout(function() {
            check_contact();
         });
         $("#form_password").focusout(function() {
             check_password();
          });
        

         function check_fname() {
            var pattern = /^[a-zA-Z]*$/;
            var fname = $("#form_fname").val();
            if (pattern.test(fname) && fname !== '') {
               $("#fname_error_message").hide();
               $("#form_fname").css("border-bottom","2px solid #34F458");
            } else {
               $("#fname_error_message").html("Should contain only Characters");
               $("#fname_error_message").show();
               $("#form_fname").css("border-bottom","2px solid #F90A0A");
               error_fname = true;
            }
         }

         function check_lname() {
            var pattern = /^[a-zA-Z]*$/;
            var lname = $("#form_sname").val()
            if (pattern.test(lname) && lname !== '') {
               $("#lname_error_message").hide();
               $("#form_lname").css("border-bottom","2px solid #34F458");
            } else {
               $("#lname_error_message").html("Should contain only Characters");
               $("#lname_error_message").show();
               $("#form_lname").css("border-bottom","2px solid #F90A0A");
               error_lname = true;
            }
         }

         function check_contact() {
            var password_length = $("#form_contact").val().length;
            if (password_length < 8) {
               $("#contact_error_message").html("Atleast 8 Characters");
               $("#contact_error_message").show();
               $("#form_contact").css("border-bottom","2px solid #F90A0A");
               error_contact = true;
            } else {
               $("#contact_error_message").hide();
               $("#form_contact").css("border-bottom","2px solid #34F458");
            }
         }
         
         function check_password() {
             var password_length = $("#form_password").val().length;
             if (password_length < 8) {
                $("#password_error_message").html("Atleast 8 Characters");
                $("#password_error_message").show();
                $("#form_password").css("border-bottom","2px solid #F90A0A");
                error_password = true;
             } else {
                $("#password_error_message").hide();
                $("#form_password").css("border-bottom","2px solid #34F458");
             }
          }

        /*  function check_retype_password() {
            var password = $("#form_password").val();
            var retype_password = $("#form_retype_password").val();
            if (password !== retype_password) {
               $("#retype_password_error_message").html("Passwords Did not Matched");
               $("#retype_password_error_message").show();
               $("#form_retype_password").css("border-bottom","2px solid #F90A0A");
               error_retype_password = true;
            } else {
               $("#retype_password_error_message").hide();
               $("#form_retype_password").css("border-bottom","2px solid #34F458");
            }
         } */

         function check_gmail() {
            var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            var gmail = $("#form_gmail").val();
            if (pattern.test(gmail) && gmail !== '') {
               $("#gmail_error_message").hide();
               $("#form_gmail").css("border-bottom","2px solid #34F458");
            } else {
               $("#gmail_error_message").html("Invalid Email");
               $("#gmail_error_message").show();
               $("#form_gmail").css("border-bottom","2px solid #F90A0A");
               error_gmail = true;
            }
         }

         $("#registration_form").submit(function() {
            error_fname = false;
            error_lname = false;
            error_gmail = false;
            error_contact = false;
            error_password = false;
           

            check_fname();
            check_lname();
            check_gmail();
            check_contact();
            check_password();

            if (error_fname === false && error_lname === false && error_gmail === false && error_contact === false && error_password === false ) {
               alert("Registration Successfull");
               return true;
            } else {
               alert("Please Fill the form Correctly");
               return false;
            }


         });
      });
   </script>
		
</body>
</html>

