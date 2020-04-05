<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="registration.css" />
<link rel="stylesheet" href="header.css" />
<script src="registration.js" language="javascript">
</script>
<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("uname").value;
var urls="pass.jsp?ver="+k;
 
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        //document.getElementById("err").style.color="red";
        document.getElementById("err").innerHTML=xmlhttp.responseText;
 
    }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>

<div id="regForm">
<form action="UserController?action=register" id="registrationForm" method="post"  class="elegant-aero">
    <h1>Register Yourself
    <h2 id="error"></h2>
        <span>Please fill all the texts in the fields.</span>
    </h1>
    <label>
        <span>Your Name :</span>
        <input id="name" type="text" name="name" placeholder="Your Full Name" />
    </label>
   
    <label>
        <span>Your Email :</span>
        <input id="email" type="email" name="email" placeholder="Valid Email Address" />
    </label>
    <label>
        <span>Password</span>
        <input id="pass1" type="password" name="pass1" placeholder="password" />
    </label>
     <label>
        <span>Confirm</span>
        <input id="pass2" type="password" name="pass2" placeholder="confirm password" />
    </label>
    <label>
        <span>username</span>
        <input id="uname" type="text" name="uname" placeholder="select username" onkeyup="loadXMLDoc()" />
        
    </label>
    
	
		<span id="err"></span>
		
	<label>
		<span>Mobile No</span>
        <input id="mobile" type="text" name="mobile" placeholder="enter contact no" />
    </label>
   
    <label>
        <span>Address:</span>
        <textarea id="address" name="address" placeholder="enter address"></textarea>
    </label>
     <label>
        <span>College :</span><select name="college" >
        <option value="hbti">hbti</option>
        <option value="psit">psit</option>
        </select>
    </label>    
     <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="Register" />
    </label>    
</form>

</div>
</body>
</html>
