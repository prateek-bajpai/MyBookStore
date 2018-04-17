

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="css/home.css" rel="stylesheet" type="text/css">
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="b">
            <h1>Registration Form</h1>
            <div class="reg_image">
                <img src="image/HARRY-CHAMBER.png" width="400px" />
                
            </div>
            <div class="reg_back">
            <pre>
<script>
    function myFunction() {
        var pass1 = document.getElementById("pass").value;
        var pass2 = document.getElementById("rpass").value;
        if (pass1 != pass2) {
            alert("Passwords Do not match");
            document.getElementById("pass").style.borderColor = "#E34234";
            document.getElementById("rpass").style.borderColor = "#E34234";
        }
        else {
            alert("Passwords Match!!!");
            document.getElementById("regForm").submit();
        }
    }
</script>
            <form id="regForm" onsubmit="return myFunction()" method="post" action="register.jsp">
            <input name="name"  placeholder="Enter your name" type="text">
            <input name="email"  placeholder="email" type="text"> 
            <input name="password"  placeholder="password" type="password" id="pass"> 
            <input name="repassword"  placeholder="repassword" type="password" id="rpass"> 
            <input name="contact"  placeholder="contact" type="text"> 
            <input value="Register"   type="submit" class="btn" style="padding-bottom: 30px;"> 
            
        
            </form>
            </pre>
            </div>
        </div>
         
    </body>
   
</html>
