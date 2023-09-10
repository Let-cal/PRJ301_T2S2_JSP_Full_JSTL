<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER PAGE</title>
    </head>

    <body>
        <h1>User's Information</h1>
   
          
        UserID: ${sessionScope.LOGIN_USER.userID}</br>
        FullName: ${sessionScope.LOGIN_USER.fullName}</br>
        Password: ${sessionScope.LOGIN_USER.password}</br>
        RoleID: ${sessionScope.LOGIN_USER.roleID}</br>
        
        
    </body>
</html>
