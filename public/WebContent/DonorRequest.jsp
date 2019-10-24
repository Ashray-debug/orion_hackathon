<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Request Blood</title>
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
            body{
padding-top: 40px;
}
.p1
{
color:white;
}
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
.responsive-image{
    width: 100%;
    background-size: 100% 100%;
} 
and finally, we serve for every view-port the right image:
/* Retina display */
@media screen and (min-width: 1024px){
    .responsive-image{
        background-image: url('../img/retina.jpg');
    }
}
/* Desktop */
@media screen and (min-width: 980px) and (max-width: 1024px){
    .responsive-image{
        background-image: url('../img/desktop.jpg');
    }
}
/* Tablet */
@media screen and (min-width: 760px) and (max-width: 980px){
    .responsive-image{
        background-image: url('../img/tablet.jpg');
    }
}
/* Mobile HD */
@media screen and (min-width: 350px) and (max-width: 760px){
    .responsive-image{
        background-image: url('../img/mobile-hd.jpg');
    }
}
/* Mobile LD */
@media screen and (max-width: 350px){
    .responsive-image{
        background-image: url('../img/mobile-ld.jpg');
    }
}     
        </style>
</head>
<body data-spy="scroll" data-target="#my-navbar">
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>       
      <a href=" " class="navbar-brand">Blood Bank</a>   
    </div>
  <div class="collapse navbar-collapse" id="navbar-collapse">
   <a href="" class="btn btn-info navbar-btn navbar-right">Request Blood</a>   
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
<div class="jumbotron responsive-image" style="background-image: url(b5.jpg)";>
   <div class="container text-center roy">
       <h1><b>e-Blood Bank System</b></h1>
       <p class="p1">To the young and healthy it's no loss. To sick it's hope of life. Donate Blood to give back life.</p> 
    </div>
</div>
<div class="container-fluid bg-danger">
            <div class="col-lg-5 bg-success text-info">
                <form action="Search.jsp" method="">
                <b><font face="Verdana" size="5">REQUEST BLOOD</font></b><br />
                <font face="Verdana" size="4">Patient Details</font><br/>
                <font face="Times New Roman" size="3"><label>Patient Name</label><br><input type="text" class="form-control" placeholder="Enter Name " name="n1"><br/>
                 <label>Email</label><br><input type="email" class="form-control" name="email" placeholder="Enter Email" required><br/>
                <label>Doctor Name</label><br><input type="text" class="form-control" name="n2" placeholder="Enter Name"><br/>
                <label>Hospital Name and Address</label><br><textarea rows="3" cols="23" name="a1" class="form-control" placeholder="Enter Address"></textarea><br/>
                <label>City</label><br><input type="text" required class="form-control" name="n3" placeholder="Enter City"><br/>
                <label>State</label><br><input type="text" required class="form-control" name="n4" placeholder="Enter State"><br/>
                <div class="form-group">
                  <label class="control-label required col-sm-2" for="blood group" >Blood Group:</label>
                   <div class="radio col-sm-10"><br/>
                  <label><input type="radio" value="O+" name="optradio">0+&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="O-" name="optradio">0-&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="A+" name="optradio">A+&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="A-"name="optradio">A-&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="B+"name="optradio">B+&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="B-" name="optradio">B-&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="AB+" name="optradio">AB+&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <label><input type="radio" value="AB-" name="optradio">AB-&nbsp;&nbsp;&nbsp;&nbsp;</label> 
                   </div>
                </div>
                 <label>When Required</label><br>
                 <input type="date" min="2000-1-1" max="2050-12-31" name="d1" class="form-control" placeholder="dd/mm/yyyy"><br/>
             <font face="Verdana" size="4">Contact Information</font><br/>
             <label>Contact Name</label><br><input type="text" class="form-control" placeholder="Enter Name" name="n5" ><br/>
             <label>Contact Email ID</label><br><input type="email" class="form-control" placeholder="Enter Email" name="e1"><br/>
             <label>Contact Number</label><br><input type="text" class="form-control" placeholder="Enter Number" name="n6" ><br/>
             <label>Other Message</label><br><input type="text" class="form-control" placeholder="Any Message" name="n7" rows="3" cols="23" ><br/><br/>
             <br><br>
                 <input type="checkbox" value="" name="c1"><font color="red"> I agree to the terms and conditions and consent to have my contact and donor information.</font><br>
                 <br>
                 <label class="button-"><input type="reset" class="btn btn-primary" value="Reset" ></label>
                 <input type="submit" class="btn btn-primary" value="Request Blood">
             </font>    
                </form>
             </div>
             <div class="col-lg-2 text-info">
</div>
<div class="col-lg-5 bg-success text-info">
<br/><br/><br/><br/><br/><br/>
  <img src="text.gif" height="470" alt="centre">
  <br/><br/><br/><br/><br/><br/>
  <img src="blood_donors_1.jpg" height="550" alt="centre">
</div>
             </div>
</body>
</html>