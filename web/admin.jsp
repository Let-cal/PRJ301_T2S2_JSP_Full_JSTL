<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="admin.css">
  
    </head>

    <body>
       
        <div class="All">
            <h1>
                Welcome: ${sessionScope.LOGIN_USER.fullName}
            </h1> 
            <c:url var="logoutLink" value="MainController">
                <c:param name="action" value="Logout1" ></c:param>
            </c:url>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="navbar-center">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="${logoutLink}">Logout</a></li>
                        <li><a href="MainController?action=CreatePage">Create user</a></li>
                        <li><a href="MainController?action=ShoppingPage">Shopping</a></li> 

                    </ul>
                </div>

            </div>

            <div class="function-center">
                <form action="MainController">
                    Search<input type="text" name="search" value="${param.search}"/>
                    <input type="submit" name="action" value="Search"/>
                    <input type="submit" name="action" value="Logout"/>
                </form>
            </div>
        </div>




        <div class="table">
            <c:if test="${requestScope.LIST_USER !=null}">
                <c:if test="${not empty requestScope.LIST_USER}">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>User ID</th>
                                <th>Full Name</th>
                                <th>Role ID</th>
                                <th>PassWord</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                            <form action="MainController" method="POST">
                                <tr>
                                    <td>${counter.count}</td>
                                    <td>
                                        <input type="text" name="userID" value="${user.userID}" readonly=""/>
                                    </td>
                                    <td>
                                        <input type="text" name="fullName" value="${user.fullName}" required=""/>

                                    </td>
                                    <td>
                                        <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                    </td>
                                    <td>${user.password}</td>
                                    <td>
                                        <input type="submit" name="action" value="Update"/>
                                        <input type="hidden" name="search" value="${param.search}"/>

                                    </td>
                                    <td>
                                        <c:url var="deleteLink" value="MainController">
                                            <c:param name="action" value="Delete"></c:param>
                                            <c:param name="search" value="${param.search}"></c:param>
                                            <c:param name="userID" value="${user.userID}"></c:param>
                                        </c:url>
                                        <a href="${deleteLink}">Delete</a>
                                    </td>
                                </tr>
                            </form>
                        </c:forEach>

                        </tbody>
                    </table>

                </c:if>
            </c:if>

        </div>
        <div class="footer">

            <div class="text">
                <p>Email : letrancatlam123@gmail.com</p>
                <p>Address: Nguyen Xien,Phuong Long Thach My,TP.Thu Duc, HCMC</p>
                <h5>&copy; Copyright 2021. CatLam.VN</h5>

            </div>
        </div>
                    <h3>
                        ${requestScope.ERROR}
                    </h3> 
    </body>
</html>
