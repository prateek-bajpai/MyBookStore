

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
        <title>JSP Page</title>
        <%@ include file="header.jsp"%>
    </head>
    
       
        <html>
            <body>
     <%
     try{  
         String book_name=null;
     
         book_name = request.getParameter("search_boook");
         
        
     
        
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcpl", "root", "pb151352");
            
         
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select bname,bdes,book_loc,bauthor from b_book where bname = '"+book_name+"'");
         
        while(rs.next())
         {
             String book = rs.getString("bname");
             String book_des = rs.getString("bdes");
             String book_auth = rs.getString("bauthor");
              String book_loc = rs.getString("book_loc");
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
                    <td><a href="http://localhost:8080/MyBookStore/<%out.println(book_loc);%>">Download</a></td>
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
    
</html>
