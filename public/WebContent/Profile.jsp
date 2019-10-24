<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
.form-group
{
font-size:25px;
}

.gallery0
{
position: absolute;
top:1500px;

left:300px;
}






#div001 {
	position: absolute;
	top: 300px;
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
	<%
		String e = (String) session.getAttribute("email");
		Object id = session.getAttribute("id");
		System.out.println(request.getAttribute("bgroup"));
		if (e == null || id == null) {
			System.out.println("Session expired");
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
			response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
			response.setHeader("Expires", "0"); // Proxies.
			response.sendRedirect("index.html");
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
		<a href="DonorRequest.jsp" class="btn btn-info navbar-btn navbar-right">Request
					Blood</a>
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
			<h1>
				<b>Your Profile</b>
			</h1>
			<p class="p1">To the young and healthy it's no loss. To sick it's
				hope of life. Donate Blood to give back life.</p>
		</div>
	</div>
	<br>
	<div class="container-fluid" id="div001" style="height:50px">
		<div class="container-fluid">
			<h1>Your Profile</h1>
			<hr
				style="height: 1px; border: none; color: #333; background-color: #333;" />
			<div class="row jumbotron">
			
				<div class="col-lg-8">
						<div class="form-group">
							<label  for="name">Name:</label>
							<div><%=request.getAttribute("name") %>
							</div>
						</div>
						<div class="form-group">
							<label for="age">Age:</label>
							<div ><%=request.getAttribute("age") %>
							</div>
						</div>
						<div class="form-group">
							<label  for="comment">Address:</label>
							<div><%=request.getAttribute("address") %>
							</div>
						</div>
						<div class="form-group">
							<label  for="comment">Country:</label>
							<div><%=request.getAttribute("country") %>
							</div>
						</div>
						<div class="form-group">
							<label for="comment">State:</label>
							<div><%=request.getAttribute("state") %>
							</div>
						</div>
						<div class="form-group">
							<label for="comment">City:</label>
							<div ><%=request.getAttribute("city") %>
							</div>
						</div>
						<div class="form-group">
							<label for="pincode">pin-code:</label>
							<div><%=request.getAttribute("pin") %>
							</div>
						</div>
						<div class="form-group">
							<label  for="email">email:</label>
							<div ><%=session.getAttribute("email") %>
							</div>
						</div>
						<div class="form-group">
							<label for="Mobileno">MobileNumber:</label>
							<div ><%=request.getAttribute("mobile") %>
							</div>
						</div>
						<div class="form-group">
							<label  for="blood group">BloodGroup:</label>
							<div ><%=request.getAttribute("bgroup") %>
						</div>
						</div>
				</div>
				<div class="col-lg-4  div000" style="background-color:;">
					<blockquote>
						<div class="header" style="border: 1px solid black">
							<h2>
								<b>Recent Blood Requests</b>
							</h2>
						</div>
						<%!String em="";
						String acceptor="";%>
						<%try{
							em=(String)session.getAttribute("email");
							Class.forName("com.mysql.jdbc.Driver");
							Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","234567");
								Statement st=cn.createStatement();
								ResultSet rs=st.executeQuery("select * from bloodrequest where donor='"+em+"' and status='requestSent'");
								while(rs.next()){
									acceptor=rs.getString("acceptor");
								%>
								<div> Request from 
								<a href=ProfileGuest.jsp/?email=<%=acceptor %>><%=acceptor %></a>
								<form action=acceptRequest>
								<input type=hidden name=donor value=<%=em %>>
								<input type=submit value="acceptRequest"></form>
								<form action=cancelRequest>
								<input type=hidden name=donor value=<%=em %>>
								<input type=submit value=Cancel></form>
+								</div>
								<%
								}
								}
								catch(Exception ex){
								}%>
						<div id="designDiv" class="jumbotron"
							style="text-align: justify; border: 1px solid black">
							<footer></footer>
						</div>
					</blockquote>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	<!-- Gallery -->
	<div class="container gallery0" style="background-image: url(r6.jpg);">
		<section>
			<div class="page-header p1" id="gallery">
				<h2>
					Gallery.<small><b>Check it out</b></small>
				</h2>
			</div>
			<div class="carousel slide" id="screenshot-carousel"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#screenshot-carousel" data-slide-to="0"
						class="active"></li>
					<li data-target="#screenshot-carousel" data-slide-to="1"></li>
					<li data-target="#screenshot-carousel" data-slide-to="2"></li>
					<li data-target="#screenshot-carousel" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="m1.jpg" alt="Text of the image">
					</div>
					<div class="item">
						<img src="blood1.jpg" height="650px" alt="Text of the image">
					</div>
					<div class="item">
						<img src="blood5.jpg" alt="Text of the image">
					</div>
					<div class="item">
						<img src="blood7.jpg" alt="Text of the image">
					</div>
				</div>
				<!-- End Carousel inner -->
				<a href="#screenshot-carousel" class="left carousel-control"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a href="#screenshot-carousel" class="right carousel-control"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
			<!-- End Carousel -->
	
	
	
</body>
</html>