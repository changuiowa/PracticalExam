<%-- 
    Document   : index
    Created on : Oct 11, 2016, 4:41:13 PM
    Author     : changykim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam 3b</title>
        <link rel="stylesheet" href = "HW5.css">
    </head>
    <body>
        <div class = "wrap">


            <%@include file = "includes/header.jsp" %>

            <%@include file = "includes/menu.jsp" %>




            <div class = "main">
                <br><img src = "includes/customer.png" width = "400px"/>
                <br>
                <h2>Welcome to Chang's Customer Contact Application</h2>
                <br>
                <p>This application will represent the list from the database, <br>
                    so an admin can track the customer information and utilize the data.</p>
                <br><p>
                    Users are only allowed to see the contact list.
                </p><br>
                <h2>Thank you for visiting</h2>
  

            </div>    


            <%@include file = "includes/footer.jsp" %>


        </div>

    </body>
</html>
