<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"],input[type="password"],select[type="text"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="logo.jpg"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="seekerLogin.jsp">Seeker Login</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="blslide11.jpg" >
  <img class="mySlides"  src="blslide2.jpg" >
   <img class="mySlides"  src="blslide3.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5">Form submitted successfully.</font></center>
  <%
  }
  %>
  <%

  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5">Incorrect input!! please enter valid details</font></center>
  <%
  }
  %>
  
  <center> <h1>Make an Emergency Blood Request</h1></center>
  <form action="indexFormAction.jsp" methos="post">
  <center>
  <input type="text" name="name" placeholder="Enter Name" required></br>
  <input name="text"  type="text" placeholder="Enter mobile number" pattern="[6789][0-9]{9}" required><br>
  <input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="Enter email id " required></br>
  <input type="password" name="password" placeholder="Enter password" required></br>
  <input type="text" name="location" placeholder="Enter location" required></br>
  <select type="text" name="bloodgroup" placeholder="Select required blood group"  required>
  <option value="">--choose a blood group--</option>
  <option value="AB+">AB+ </option>
  <option value="AB-">AB- </option>
  <option value="A+">A+ </option>
  <option value="B+">B+ </option>
  <option value="A-">A- </option>
  <option value="B-">B- </option>
  <option value="O+">O+ </option>
  <option value="O-">O- </option>
  </select>
   </br>
  <input type="text" name="units" placeholder="Enter required units" maxlength="1"required></br>
  <button class="button1"><span>submit</span></button>
    
  </center>  
  
  </form>
 
 
 
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>


</body>
</html>

