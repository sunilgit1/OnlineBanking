 
      $(function() {

         $("#fname_error_message").hide();
         $("#lname_error_message").hide();
         $("#gmail_error_message").hide();
         $("#contact_error_message").hide();
      /*    $("#retype_password_error_message").hide(); */

         var error_fname = false;
         var error_lname = false;
         var error_gmail = false;
         var error_contact = false;
    

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
           

            check_fname();
            check_lname();
            check_gmail();
            check_contact();

            if (error_fname === false && error_lname === false && error_gmail === false && error_contact === false ) {
               alert("Registration Successfull");
               return true;
            } else {
               alert("Please Fill the form Correctly");
               return false;
            }


         });
      });
  