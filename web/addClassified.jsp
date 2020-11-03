<%-- 
    Document   : addClassified
    Created on : Nov. 3, 2020, 12:20:17 p.m.
    Author     : Mustafa Shubbar <codingbox@outlook.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Classified</title>
    </head>
    <body>
        <h1>Add Classified</h1>
        <hr>
        <form action="AddClassifiedServlet" method="GET">
            Product: <input type="text" size="20" name="product"><br>
            Short Description: <input type="text" size="20" name="shortDesc"><br>
            Long Description: <textarea name="longDesc"></textarea>
            <br>
            Price: <input type="text" size="20" name="price"><br><br>
            <input type="submit" name="btnAction" value="Add">
            <input type="submit" name="btnAction" value="Cancel">
        </form>
        
    </body>
</html>
