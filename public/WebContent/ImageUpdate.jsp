<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">
<title>Insert title here</title>
<script src="qwerty.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.
	js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<style>
body {
	padding-top: 40px;
}
</style>
</head>
<body>
<body data-spy="scroll" data-target="#my-navbar">
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href=" " class="navbar-brand">Blood Bank</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
		<a href="DonorRequest.jsp" class="btn btn-info navbar-btn navbar-right">Request
					Blood</a>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#feedback">Feedback</a></li>
				<li><a href="#gallery">Gallery</a></li>
				<li><a href="#login">Login/Register</a></li>
				<li><a href="#faq">F.A.Q</a></li>
				<li><a href="#contact">ContactUs</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="jumbotron responsive-image"
		style="background-image: url(b5.jpg)";>
		<div class="container text-center roy">
			<h1>
				<b>Your Profile</b>
			</h1>
			<p class="p1">To the young and healthy it's no loss. To sick it's
				hope of life. Donate Blood to give back life.</p>
		</div>
	</div>
	<div class="jumbotron">
		<section> <%
 	String e = (String) session.getAttribute("email");
 	Object id = session.getAttribute("id");
 	if (e == null || id == null) {
 		System.out.println("Session expired");
 		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
 		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
 		response.setHeader("Expires", "0"); // Proxies.
 		response.sendRedirect("index.html");
 	}
 %> <%="HII.." + request.getParameter("name")%>
		<p>Update your image</p>
		<div class="maindiv" id="maindiv">
			<center>
				<form action="ProfileServlet" enctype="multipart/form-data"
					method="post">
					<img src="" width="120" height="120"
						style="border: 1px solid #fff; margin-top: 10px; margin-bottom: 10px;" />
					<br> <input type="file" name="file" /> <br>
					<textarea name="about" placeholder="Tell me about yourself"
						rows="6" cols="60"
						style="border: 1px solid #000; margin-top: 20px;"></textarea>
					<br> <input type="submit" name="sbt" value="UPLOAD"
						style="width: 130px; height: 30px; margin-top: 10px; background-color: darkgray;">
				</form>
			</center>
		</section>
	</div>
</body>
</html>