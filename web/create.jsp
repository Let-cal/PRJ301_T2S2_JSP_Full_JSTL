<%-- 
    Document   : create.jsp
    Created on : Jun 8, 2023, 10:08:09 AM
    Author     : PC
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User</title>
        <link rel="stylesheet" href="create.css">
    </head>
    <body>
       <div class="row header-flex">
            <div>
                <img src="images/fpt.jpg" alt="FPT" />
            </div>
            <div class="title">
                Create User
            </div>
        </div>

        <div class="Box">
            <form action="MainController" method="POST">
                User ID<input type="text" name="userID" required=""/>${requestScope.USER_ERROR.userIDError}
                </br>Full Name<input type="text" name="fullName" required=""/>${requestScope.USER_ERROR.fullNameError}
                </br>Role ID<input type="text" name="roleID" value="US"/>
                </br>Password<input type="password" name="password" required=""/>
                </br>Confirm<input type="password" name="confirm" required=""/>${requestScope.USER_ERROR.passwordError}
                </br><input type="submit" name="action" value="Create"/>
                <input type="reset" value="Reset"/>
            </form>

        </div>
        <h3>
            ${requestScope.ERROR}
        </h3> 
    </body>
</html>
