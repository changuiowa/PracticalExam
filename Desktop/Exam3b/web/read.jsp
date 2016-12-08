
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Page</title>
        <link rel="stylesheet" href = "HW5.css">
    </head>

    <% String table = (String) request.getAttribute("table");%>



    <body>
        <div class = "wrap">


            <%@include file = "includes/header.jsp" %>

            <%@include file = "includes/menu.jsp" %>




            <div class = "main">
                <br>
                <h1>Customer List</h1>

                <%= table%>



                <br><br>
                <a href="add">Add a new customer</a>
                <br><br>
                

            </div>    


            <%@include file = "includes/footer.jsp" %>


        </div>
    </body>
</html>
