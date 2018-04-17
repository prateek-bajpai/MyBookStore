<%-- 
    Document   : subcategory
    Created on : Oct 6, 2016, 2:34:00 PM
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="header.jsp"%>
        <title>Sub_Category</title>
    </head>
    <body>
 
          <%
     try{
         String cm = request.getParameter("came");
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcpl", "root", "pb151352");
            
         
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select bname,bdes,book_loc,bauthor from b_book where bcategory = '"+cm+"'");
         
         while(rs.next())
         {
             String book = rs.getString("bname");
             String book_des = rs.getString("bdes");
             String book_auth = rs.getString("bauthor");
              String b_loc = rs.getString("book_loc");
             %>
             <html>
             <head>
             <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <title>JSP List Users Records</title>
             </head>
             <body>
              <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of books</h2></caption>
            <tr>
                <th>BOOK</th>
                <th>DESCRIPTION</th>
                <th>AUTHOR</th>
                <th>DOWNLOAD</th>
            </tr>
                <tr>
                    <td> <% out.print(book); %></td>
                    <td> <% out.print(book_des); %></td>
                    <td><% out.print( book_auth); %></td>
      
                    <td><a href="http://localhost:8080\MyBookStore\<%out.println(b_loc);%>">Download</a></td>
                </tr>
                
            </c:forEach>
        </table>
    </div> 
</body>
</html>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
        
        <%@ include file="footer.jsp"%>
    </body>
</html>
