<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="resources/css/myapps.css" var="myappsURL" />
<link href="${myappsURL}" rel="stylesheet">

 <spring:url value="/home" var="homeURL" />
<spring:url value="/save" var="saveURL" />
<spring:url value="/login" var="loginURL" />
<spring:url value="/search" var="searchURL" />
 
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
						<li class="${homeactive}"><a href="${homeURL}">Home</a></li>
				
					<li class="${customerRegisterActive}"><a href="${saveURL}">Register
							</a></li>
					<li class="${customerLoginActive}"><a href="${loginURL}">LogIn
							</a></li>
					<li class="${customerListActive}"><a href="${loadURL}">Service
							</a></li>
					<li class="${customerSearchActive}"><a href="${searchURL}">Contact
					</a></li>
					<li class="${customerSearchActive}"><a href="${searchURL}">About
		</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</nav>