

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
        <title>User Profile</title>
        <%@ include file="header.jsp"%>
    </head>
    <body>
        <%
         try{
             String session_id=null;
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
        session_id=(String)session1.getAttribute("name");  
      
        }
             
             Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcpl", "root", "pb151352");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select * from b_register where uid='"+session_id+"'");
          rs.next();
          String name = rs.getString("name");
          String email = rs.getString("email");
          String mob = rs.getString("contact");
          %>
            <h1><%out.println("WELCOME DEAR USER");%></h1>
           <h1><%out.println("YOUR NAME:"+"\t"+name);%></h1>
           <h1><%out.println("EMAIL:"+"\t"+email);%></h1>
           <h1><%out.println("YOUR MOBILE NO.:"+"\t"+mob);%></h1>
           <%
         }catch(Exception e){
          out.println(e);
         }
     
          
       
        %>
        
       
        <%@ include file="footer.jsp"%>
    </body>
</html>
