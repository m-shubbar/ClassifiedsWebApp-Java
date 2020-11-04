<%-- 
    Document   : viewClassifiedDetail
    Created on : Nov. 3, 2020, 12:21:18 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page import="beans.Classified"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Classified Details</title>
    </head>
    <body>
        <h1>View Classified Details</h1>
        <hr>
        <a href="addClassified.jsp">Add new Classified</a> | 
        <a href="viewAllClassifieds.jsp">View All Classifications</a>
        <hr>
        <%
            Classified classified = (Classified) session.getAttribute("classified");
            if(classified==null) {
                response.sendRedirect("viewAllClassifieds.jsp");
            }
        %>
        
        <br>Product: <%= classified.getProduct() %><br>
        Short Description: <%= classified.getShortDesc() %><br>
        Long Description: <%= classified.getLongDesc() %><br>
        Contact Name: <%= classified.getContactName() %><br>
        Contact Number: <%= classified.getContactNumber() %><br>
        Price: <%= classified.getPrice() %><br>
        <br>
        <form action="deleteClassifiedServlet" method="GET">
            <input type="submit" name="btnAction" value="Buy">
            <input type="submit" name="btnAction" value="Cancel">
        </form>
        
    </body>
</html>
