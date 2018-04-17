

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/home.css"/>
        <%@ include file="header.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
       
        <div class="contact-us" style="background-color: #3498db; padding-bottom: 100px; padding-top: 10px; margin-top: 20px;">
        <h1 style="color:  #ffffff; margin-left: 50px;">Contact US</h1>
        <form action="contact" method="get">
            <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px; ">Name: <input name="name" type="text" placeholder="enter name" style="margin-left: 167px; width: 350px;"/></label>
          <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Phone number: <input name="pnumber" type="text" placeholder="enter Phone number:"style="margin-left: 96px; width: 350px;"/></label>
         <br><br>   <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Email: <input name="email" type="text" placeholder="enter mail id"style="margin-left: 165px; width: 350px;"/></label>
         <br><br>   <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Comments and questions:<textarea name="comment" style="width:350px; border:1px solid #999999; margin-top: 0px;margin-left: 15px; "></textarea></label>
            <br><br>
             <input type="submit" name="btn" class ="cbtn" />
            
        </form>
    
    </div>
        
        <div class="contact-us-right"style="background-color: #3498db;padding-bottom: 100px;">
            
            <p style="color: #ffffff;margin-top: -50px;margin-left: 22px;">(RCPL INDIA : Inspire to aspire)<br>
                <b style="font-size: 20px;">Mr. Prateek Bajpai</b><br>
                <b style="font-size: 20px;">Add..</b> 22-Z-1,Barra 2 Kanpur,U.P India <br>
            <b style="font-size: 20px;">Phone</b> : 9044529606
            +(91)-9993146134<br>
            <b style="font-size: 20px;">E-Mail</b> : pbajpai577@gmail.com 
            
            </p>
            
        </div> 
        <div style="margin-top: 30px;">
        <%@ include file="footer.jsp"%>
        </div>
    </body>
</html>
