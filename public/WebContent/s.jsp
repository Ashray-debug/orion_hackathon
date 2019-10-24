   <!DOCTYPE html>
   <html>
   <head>
     <title></title>
   </head>
   <body>
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