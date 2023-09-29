<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="admin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </head>

    <body>

        <div class="All">
            <div class="container justify-content-center">
                <div class="text-center text-danger">
                    <h1>
                        Welcome: ${sessionScope.LOGIN_USER.fullName}
                    </h1> 
                </div>

                <c:url var="logoutLink" value="MainController">
                    <c:param name="action" value="Logout1" ></c:param>
                </c:url>


                <ul class="nav navbar-nav">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-4">
                            <div class="box">
                                <li class="text"><a href="${logoutLink}">Logout</a></li>
                            </div>

                        </div>
                        <div class="col-lg-4 col-4">
                            <div class="box">
                                <li><a href="MainController?action=CreatePage">Create user</a></li>
                            </div>

                        </div>
                        <div class="col-lg-4 col-4">
                            <div class="box">
                                <li class="text"><a href="MainController?action=ShoppingPage">Shopping</a></li>
                            </div>

                        </div>
                    </div>
                </ul>
            </div>



            <div class="function-center">
                <form action="MainController">
                    <h3 class="text-center">Search User</h3>
                    <div class="row">
                        <div class="col-md-8">
                            <input class="form-control " type="text" name="search" value="${param.search}" style="width: 100%;"/>
                        </div>
                        <div class="col-md-2">
                            <input type="submit" name="action" value="Search" class="btn btn-primary btn-block"/>
                        </div>
                        <div class="col-md-2">
                            <input type="submit" name="action" value="Logout" class="btn btn-secondary btn-block"/>
                        </div>
                    </div>
                </form>
            </div>





            <div class="boxoftable">
                <c:if test="${requestScope.LIST_USER !=null}">
                    <c:if test="${not empty requestScope.LIST_USER}">
                        <table class="table table-hover table-primary">
                            <thead>
                                <tr class="table-danger">
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
