<%-- 
    Document   : updateForm
    Created on : Oct 27, 2016, 4:58:25 PM
    Author     : changykim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer = (Customers) request.getAttribute("customer");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update a product</title>
        <link rel="stylesheet" href = "HW5.css">
    </head>
    <body>
        <div class = "wrap">


            <%@include file = "includes/header.jsp" %>

            <%@include file = "includes/menu.jsp" %>




            <div class = "main"> 
                <br>
                <h1>Update the customer record</h1>

                <form name ="updateForm" action="updateCustomer" method="get">

                    <table class = "add">

                        <tr>        
                            <td><lable>Customer ID:</lable></td>
                        <td><input type="text" name="id" value="<%= customer.getCustID()%>" readonly/></td>
                        
                        </tr>                        

                        <tr>        
                            <td><lable>First Name:</lable></td>
                        <td><input type="text" name="firstName" value="<%= customer.getFirstName()%>"/></td>
                       
                        </tr> 

                        <tr>
                            <td><lable>Last Name:</lable></td>
                        <td><input type="text" name="lastName" value="<%= customer.getLastName()%>"/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>Address 1:</lable></td>
                        <td><input type="text" name="addr1" value="<%= customer.getAddr1()%>"/></td>
                       
                        </tr> 

                        <tr>
                            <td><lable>Address 2:</lable></td>
                        <td><input type="text" name="addr2" value="<%= customer.getAddr2()%>"/></td>
                        
                        </tr> 


                        <tr>
                            <td><lable>City:</lable></td>
                        <td><input type="text" name="city" value="<%= customer.getCity()%>"/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>State:</lable></td>
                        <td><input type="text" name="state" value="<%= customer.getState()%>"/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>Zip:</lable></td>
                        <td><input type="text" name="zip" value="<%= customer.getZip()%>"/></td>
                        
                        </tr> 

                        <tr>
                            <td><lable>E-mail:</lable></td>
                        <td><input type="text" name="emailAddr" value="<%= customer.getEmailAddr()%>"/></td>
                        
                        </tr>                         

                    </table>            
                    <input type="reset" value="Clear" id="clear"/>
                    <input type="submit" value="Submit" id="update"/>

            </div>    


            <%@include file = "includes/footer.jsp" %>


        </div>

    </body>
</html>
