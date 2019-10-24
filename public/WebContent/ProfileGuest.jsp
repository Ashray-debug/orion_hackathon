<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
#div001 {
	position: absolute;
	top: 600px;
	background-color:;
	left: 50px;
	right: 100px;
}

#designDiv {
	overflow-y: scroll;
	max-width: 1000px;
	max-height: 600px;
}

body {
	padding-top: 40px;
}

.header {
	background-color: pink;
	height: 110px;
	text-align: center;
}
</style>
</head>
<body>
	<%!String n=" ";
String emd=" ";
int age;
String bg=" ";
int pin=000;
String c=" ";
String a=" ";
String ci=" ";
String s=" ";
String co=" ";%>
	<%
		String e = (String) session.getAttribute("email");
		Object id = session.getAttribute("id");
		if (e == null || id == null) {
			System.out.println("Session expired");
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
			response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
			response.setHeader("Expires", "0"); // Proxies.
			response.sendRedirect("index.html");
		}
	%>
	<%
	try{
	emd=request.getParameter("email");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","234567");
	Statement st=cn.createStatement();
	ResultSet rs=st.executeQuery("select * from b3 where email="+emd);
	rs.next();
	n=rs.getString("name");
	int age=rs.getInt("age");
	String bg=rs.getString("bgroup");
	int pin=rs.getInt("pincode");
	String c=rs.getString("mobile");
	String a=rs.getString("address");
	//String g=request.getParameter("gen");
	String ci=rs.getString("city");
	String s=rs.getString("state");
	String co=rs.getString("country");
} catch(Exception ex){
	System.out.println(ex);
}
	%>

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
			<a href="DonorRequest.jsp"
				class="btn btn-info navbar-btn navbar-right">Request Blood</a>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logOut"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
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
			<p class="p1">To the young and healthy it's no loss. To sick it's
				hope of life. Donate Blood to give back life.</p>
		</div>
	</div>
	<br>
	<div class="container-fluid" id="div001">
		<div class="container-fluid">
			<hr style="height: 1px; border: none; color: #333; background-color: #333;" />
				<div class="row">
				<div class="col-lg-16" style="background-color:yellow;">
				<div style="background-color:yellow;">
						<div class="form-group">
							<label class="control-label col-sm-4" for="name">Name:</label>
							<div class="col-sm-12"><%=n %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="age">Age:</label>
							<div class="col-sm-12"><%=age %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="comment">Address:</label>
							<div class="col-sm-12"><%=a %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="comment">Country:</label>
							<div class="col-sm-12"><%=co %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="comment">State:</label>
							<div class="col-sm-12"><%=s %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="comment">City:</label>
							<div class="col-sm-12"><%=ci %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="pincode">pin-code:</label>
							<div class="col-sm-12"><%=pin %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="email">email:</label>
							<div class="col-sm-12"><%=session.getAttribute("email") %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="Mobileno">MobileNumber:</label>
							<div class="col-sm-12"><%=c %>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="blood group">BloodGroup:</label>
							<div class="col-sm-12"><%=bg %>
						</div>
						</div>
						</div>
</body>
</html>