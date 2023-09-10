<%-- 
    Document   : shopping
    Created on : Jun 15, 2023, 10:15:12 AM
    Author     : wukon
--%>

<%@page import="java.util.Map"%>
<%@page import="sample.shopping.Tea"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> My Store</title>
        <link rel="stylesheet" href="shopping.css">
    </head>
    <body>
        <h1>Welcome to my Store </h1>
        <div class="container">
            <form action="MainController">
                <select name="cmbTea">
                    <option value="T01- Vai tea-30">Vai Tea- 30k</option>
                    <option value="T02- Green ThaiLan Tea-30">Green ThaiLan Tea- 30k</option>
                    <option value="T03- Pink tea-30">Pink- 30k</option>
                    <option value="T04- Daisy-30">Daisy Tea- 30k</option>
                </select>
                <select name="cmbvQuantity">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="10">10</option>
                </select>
                <input type="submit" name="action" value="Add" />
                <input type="submit" name="action" value="View"/>
            </form>
            <h3> 
                ${requestScope.MESSAGE}
            </h3>
           
            <div class="container pic">
                <img src="images/Tra-Vai.png" alt="TraVai" />
                <img src="images/thai-xanh.jpg" alt="ThaiXanh" />
            </div>
            <div class="container pic">
                <img src="images/Hong-tra.png" alt="HongTra" />
                <img src="images/Daisy-tea.png" alt="DaisyTea" />
            </div>

            
    </body>
</html>
