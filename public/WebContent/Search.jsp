<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Donors</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.theme" type="text/css">
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="imgsliding.css">
<style>
body {
	padding-top: 40px;
}

.p1 {
	color: white;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}

.responsive-image {
	width: 100%;
	background-size: 100% 100%;
}

and

 

finally
,
we

 

serve

 

for

 

every

 

view-port

 

the

 

right

 

image


: /* Retina display */




@media screen and (min-width: 1024px) {
	.responsive-image {
		background-image: url('../img/retina.jpg');
	}
}
/* Desktop */
@media screen and (min-width: 980px) and (max-width: 1024px) {
	.responsive-image {
		background-image: url('../img/desktop.jpg');
	}
}
/* Tablet */
@media screen and (min-width: 760px) and (max-width: 980px) {
	.responsive-image {
		background-image: url('../img/tablet.jpg');
	}
}
/* Mobile HD */
@media screen and (min-width: 350px) and (max-width: 760px) {
	.responsive-image {
		background-image: url('../img/mobile-hd.jpg');
	}
}
/* Mobile LD */
@media screen and (max-width: 350px) {
	.responsive-image {
		background-image: url('../img/mobile-ld.jpg');
	}
}
</style>
</head>
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
			<a href="Donorrequest.html"
				class="btn btn-info navbar-btn navbar-right">Request Blood</a>
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
				<b>e-Blood Bank System</b>
			</h1>
			<p class="p1">To the young and healthy it's no loss. To sick it's
				hope of life. Donate Blood to give back life.</p>
		</div>
	</div>
	<div class="container-fluid bg-danger">
		<div class="col-lg-5 bg-warning text-info">
			<%
				String pname = request.getParameter("n1");
				String emp = request.getParameter("email");
				String dname = request.getParameter("n2");
				String hname = request.getParameter("a1");
				String pcity = request.getParameter("n3");
				String pstate = request.getParameter("n4");
				String bg = request.getParameter("optradio");
				String date = request.getParameter("d1");
				String cname = request.getParameter("n5");
				String cemail = request.getParameter("e1");
				String cnumber = request.getParameter("n6");
				String msg = request.getParameter("n7");
				session.setAttribute("emailFrom", emp);
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","234567");
					PreparedStatement pst = con.prepareStatement("Select * from b3 where state=? and bgroup=?");
					pst.setString(1, pstate);
					pst.setString(2, bg);
					ResultSet rs = pst.executeQuery();
					System.out.println("state=" +pstate);
					while (rs.next()) {
						String name = rs.getString(2);
						String address = rs.getString(9);
						String city = rs.getString(11);
						String state = rs.getString(12);
						String email = rs.getString(4);
						System.out.println(email);
						String number = rs.getString(8);
			%>
			<b><font face="Verdana" size="5">Donors Details</font></b><br /> <br />
			<i> <font face="Verdana" size="4"><%=name%><br /> <%=address%><br />
					<%=city%><br /> <%=state%><br />
					<a href=ProfileGuest.jsp?email=<%=email%>><%=email%></a><br/><%=number%><br />
					<form action=sendRequest>
					<input type=hidden name=donor value=<%=email%>>
					<input type=submit value=sendRequest></form>
			</font><br /> <br /></i>
			<%
				}
				} catch (Exception e) {
					System.out.print(e);
				}
			%>
		</div>
		<div class="col-lg-2 text-info"></div>
		<div class="col-lg-5 bg-warning text-info">
			<img src="bottle.jpg" height="650px" alt="right">
		</div>
	</div>
</body>
</html>