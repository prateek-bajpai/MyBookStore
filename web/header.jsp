

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/header.css" rel="stylesheet" type="text/css">
        <title>header</title>
    </head>
    <body>
        <%
            String n = (String) session.getAttribute("name");
            if (n == null) {%>
        <div class="back">
            <div class="logo">
                <label style=" font-size: 35px;color: #ffffff; margin-left:40px; ">Welcome To Online Book Store</label>
            </div>
            <div class="menu1">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    
                    <li><a href="category.jsp">Category</a> </li>  
                    <li><a href="aboutus.jsp">About</a></li> 
                    <li><a href="contactus.jsp">Contact us</a></li> 
                </ul>
                <div style="margin-top: 15px; margin-left: 180px;">
                    <li><a href="login.jsp" style="color:mintcream">Sign in </a></li> &nbsp;&nbsp;
                    <li><a href="reg.jsp" style="color:mintcream">Sign up</a></li>

                </div>
            </div>
        </div>


        <%} else {%>
        <div class="back">
            <div class="menu1">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="totalbooks.jsp">Books</a></li>  
                    <li><a href="category.jsp">Category</a> </li>  
                    <li><a href="aboutus.jsp">About</a></li> 
                    <li><a href="contactus.jsp">Contact us</a></li> 
                </ul>
                <div style="margin-top: 15px; margin-left: 180px;">
                    <li><a href="logout.jsp" style="color:mintcream">LogOut </a></li> &nbsp;&nbsp;


                </div>
            </div>
        </div>
        <%}
        %>




    </body>
</html>
