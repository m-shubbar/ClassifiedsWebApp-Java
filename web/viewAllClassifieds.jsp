<%-- 
    Document   : viewAllClassifieds
    Created on : Nov. 3, 2020, 12:20:40 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Classified"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Classifieds</title>
    </head>
    <body>
        <h1>View All Classifieds</h1>
        <hr>
        <a href="addClassified.jsp">Add new Classified</a>
        <hr>
        <%
            ArrayList<Classified> classifieds = 
                    (ArrayList<Classified>) session.getAttribute("classifieds-list");
            if(classifieds == null || classifieds.size() ==0){
        %>
        <p>No Classifieds</p>
        <%
            } else {
        %>
        <table>
            <tr><td>Product</td><td>Description</td><td>Price</td><td>View</td></tr>
            <%
                for (Classified c : classifieds) {
            %>
            <tr>
                <td><%= c.getProduct() %></td>
                <td><%= c.getShortDesc() %></td>
                <td><%= c.getPrice() %></td>
                <td>
                    <form action="viewClassifiedServlet" method="GET">
                        <input type="hidden" name="product" value="<%= c.getProduct() %>">
                        <input type="submit" value="view">
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        <% } %>
    </body>
</html>
