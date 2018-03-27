		
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Customer</title>

    <!-- Bootstrap -->
    
     <spring:url value= "resources/css/bootstrap.min.css" var="bootstrapURL"/>
    <spring:url value= "resources/css/myapps.css" var="myappsURL"/>
      <spring:url value= "resources/jscripts/validation.js" var="validateURL"/> 
    
    <link href="${bootstrapURL}" rel="stylesheet">
     <link href="${myappsURL}" rel="stylesheet">
      <link href="${validateURL}" rel="javascript"">
     
     <!-- Bootstrap THEME CSS
   <spring:url value= "resources/css/btheme.css" var="themeURL"/>
    
    <link href="${themeUR}" rel="stylesheet"> -->

  </head>