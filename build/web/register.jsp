

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
       
        <%
    
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String mobile = request.getParameter("contact");
       
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcpl", "root", "pb151352");
            
         
          Statement stmt = con.createStatement();
      stmt.execute("insert into b_register(name,email,pass,contact)values('"+name+"','"+email+"','"+pass+"','"+mobile+"')");
       
          response.sendRedirect("login.jsp");
        
        }catch(Exception e){
            
        }
        
       
        
      
        %>
    </body>
</html>
