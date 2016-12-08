<%-- 
    Document   : add
    Created on : Oct 20, 2016, 11:13:52 PM
    Author     : changykim final commit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a new product</title>
        <link rel="stylesheet" href = "HW5.css">
    </head>

    <body>

        <div class = "wrap">


            <%@include file = "includes/header.jsp" %>

            <%@include file = "includes/menu.jsp" %>




            <div class = "main">
                <br>
                <h1>Add a new customer</h1>

                <form name ="addForm" action="addCustomer" method="get">

                    <table class = "add">


                        <tr>        
                            <td><lable>First Name:</lable></td>
                        <td><input type="text" name="firstName" value=""/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>Last Name:</lable></td>
                        <td><input type="text" name="lastName" value=""/></td>
                       
                        </tr> 

                        <tr>
                            <td><lable>Address 1:</lable></td>
                        <td><input type="text" name="addr1" value=""/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>Address 2:</lable></td>
                        <td><input type="text" name="addr2" value=""/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>City:</lable></td>
                        <td><input type="text" name="city" value=""/></td>
                        
                        </tr> 
                        <tr>
                            <td><lable>State:</lable></td>
                        <td><input type="text" name="state" value=""/></td>
                        
                        </tr> 
                        <tr>
                            <td><lable>Zip Code:</lable></td>
                        <td><input type="text" name="zip" value=""/></td>
                        
                        </tr> 
                        <tr>
                            <td><lable>E-mail:</lable></td>
                        <td><input type="text" name="emailAddr" value=""/></td>
                        
                        </tr> 


                    </table>            
                    <input type="reset" value="Clear" id="clear">
                    <input type="submit" value="Submit" value="submit"/>

            </div>    


            <%@include file = "includes/footer.jsp" %>


        </div>

    </body>
</html>
