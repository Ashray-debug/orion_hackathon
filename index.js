var mongoose =require('mongoose');
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var port=3000;
var path=require("path");
var nexmo=require('nexmo');
var fs = require("fs");

var multer  = require('multer');


app.get('/',(req,res)=>{
	res.sendFile(path.join(__dirname + '/index.html'));

});


nexmo = new nexmo({
    apiKey : '069d9c17',
    apiSecret : 'fExnHyuCIYeomx8E'
},{debug : true}
);


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false}));







app.post('/addname',function(req,res)
{
const number = "+91 " + req.body.Mobile;
const otpGenerated = Math.floor(Math.random() * (100000))
const text = otpGenerated + "is your password! You can change it on your portal using the following link "
nexmo.message.sendSms("NEXMO",number,text, { type : "unicode" }, (err,responseData) => {
                                                if(err){
                                                    console.log(err)
                                                }else{
                                                    console.dir(responseData)
                                                    //SHOW TO USER THAT MSG HAS BEEN SENT SUCCESSFULLY
                                                    const data = {
                                                        id : responseData.messages[0]['message-id'],
                                                        number : responseData.messages[0]['to']
                                                        }
                                                    
                                                    }
                                                }
                                               )
});


//FILE UPLOAD
app.post('/prescription', function (req, res) {
   console.log(req.files.file.name);
   console.log(req.files.file.path);
   console.log(req.files.file.type);
   var file = __dirname + "/" + req.files.file.name;
   
   fs.readFile( req.files.file.path, function (err, data) {
      fs.writeFile(file, data, function (err) {
         if( err ) {
            console.log( err );
            } else {
               response = {
                  message:'File uploaded successfully',
                  filename:req.files.file.name
               };
            }
         
         console.log( response );
         res.end( JSON.stringify( response ) );
      });
   });
});




mongoose.Promise = global.Promise;
var db=mongoose.connect('mongodb+srv://admin-ashray:test123@ashray-8z4xs.mongodb.net/mydb',function (err) {
 
   if (err) throw err;
   else console.log('Successfully connected');
 
});


//SIGNUP

var personSchema = mongoose.Schema({
   childName: String,
   id:String,
   dob:Date,
   Mobile:Number,
});

var Person = mongoose.model("Person", personSchema);


app.post("/addname", (req, res) => {
   var newPerson=new Person({
   Name: req.body.Name,
   id:req.body.id,
   dob:req.body.dob,
   Mobile:req.body.Mobile,
  })
    newPerson.save(function(err, doc){
    if(err) res.json(err);
    else {res.send('Successfully inserted!');
         res.json(Person);
         const number = "+91 " + req.body.Mobile;
const otpGenerated = Math.floor(Math.random() * (100000))
const text = otpGenerated + "is your password! You can change it on your portal using the following link "
nexmo.message.sendSms("NEXMO",number,text, { type : "unicode" }, (err,responseData) => {
                                                if(err){
                                                    console.log(err)
                                                }else{
                                                    console.dir(responseData)
                                                    //SHOW TO USER THAT MSG HAS BEEN SENT SUCCESSFULLY
                                                    const data = {
                                                        id : responseData.messages[0]['message-id'],
                                                        number : responseData.messages[0]['to']
                                                        }
                                                    
                                                    }
                                                }
                                               )
    }
  });
});

app.post('/logging', function(req, res)
{
    Person.findOne({id: req.body.lname, Password: req.body.lpass}, function(err, user){
        if(err) {
          res.send("Enter");
        }
        else if(user){
              return res.redirect('/user');
        }
        else {
            res.send("Invalid");
        }
    });

});


app.get('/logout', function(req, res){
   req.session.destroy(function(){
      console.log("user logged out.")
   });
   res.redirect('/');
});


var contactusschema = mongoose.Schema({
   name: String,
   subject: String,
   idc:String,
   message:String
});

var contactus = mongoose.model("contactus", contactusschema);

app.post("/contact", (req, res) => {
   var feedback=new contactus({
   name: req.body.name,
   email:req.body.email,
   subject: req.body.subject,
   message:req.body.message
  });
    feedback.save(function(err, doc){
    if(err) res.json(err);
    else  {res.send('Successfully Sent');}
  });
});

app.post("/ambulance",function(req,res){
res.send("Ambulance has been booked and a message has been sent including the live location of the ambulance");
var tosend = '91'+req.body.Mobile;
nexmo.message.sendSms("Nexmo", tosend,"Track ambulance through the following link-> https://www.google.com/maps/dir/Columbia+Asia+Hospital,+Punjabi+Bagh,+Patiala,+Punjab/Thapar+Institute+of+Engineering+and+Technology,+Adarsh+Nagar,+Prem+Nagar,+Patiala,+Punjab+147004/@30.3490342,76.3660801,15z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x391028b9647cfc47:0xddf8f9271079939c!2m2!1d76.378885!2d30.344075!1m5!1m1!1s0x391028abdad39763:0xa7f6232cbef903a4!2m2!1d76.3710378!2d30.3529716");
});


app.listen( 3000, () => {
 console.log("Server listening on port " + port);
});
// api key
//AIzaSyAq_KNOBKRRCF8kh9vFm2dBDv28IgsTw8I