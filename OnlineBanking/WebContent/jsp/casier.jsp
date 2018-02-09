<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value= "resources/css/bootstrap.min.css" var="bootstrapURL"/>
    <spring:url value= "resources/css/myapps1.css" var="myapps1URL"/>
    
    <link href="${bootstrapURL}" rel="stylesheet">
     <link href="${myapps1URL}" rel="stylesheet">
     
  <spring:url value="/home" var="homeURL" />
<spring:url value="/saveCus" var="saveCusURL" />
<spring:url value="/loadCus" var="loadCusURL" />


  
<!-- start header -->

<nav
	class="navbar navbar-custom navbar-nav navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<div class="navbar-header">
					<buttom type="buttom" class="navbar-toggle" data-toggle="collapse"
						data-target="#robust"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> </buttom>
					<a href="#" class="navbar-brand">HDFC Bank</a>
				</div>
			</div>
			<div class="col-md-8">
				<div class="collapse navbar-collapse" id="robust">
					<ul class="nav navbar-nav">
						<%-- <li class="${homeactive}"><a href="${homeURL}">Home</a></li> --%>
				
					<%-- <li class="${customerRegisterActive}"><a href="${saveURL}">Staff Details
							</a></li> --%>
					<li class="${customerRActive}"><a href="${saveCusURL}">Register Customer
							</a></li>
					<li class="${customerLiActive}"><a href="${loadCusURL}">Customer Details 
							</a></li>
							<li class="${customerListActive}"><a href="${editDeptUrl}">Transaction Details  
							</a></li>
					<li class="${customerSearchActive}"><a href="${searchURL}">LogOut
					</a></li>
					
					</ul>
					
				</div>
			</div>
		</div>
	</div>
</nav>


<!-- end header -->

<!-- menu-->
<div id="header" class="header">
	<div class="container">
		
		<div class="col-md-8">
			<!-- <img src="resources/image/hd.jpg" alt=""> -->
			<h3>Welcome Casier</h3>
		</div>
	</div>
</div>
</div>
