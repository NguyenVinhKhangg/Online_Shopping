<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <style>
            .container{
                padding-top: 2%;
                padding-left: 12%;
                padding-right: 12%;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="home">Yu-Gi-Oh!</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>


                <ul class="navbar-nav m-auto">


                    <c:if test="${sessionScope.acc.isSell == 1}" >
                        <li class="nav-item">
                            <a class="nav-link" href="managerP">Manager Product</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin == 1}" >
                        <li class="nav-item">
                            <a class="nav-link" href="managerA">Manager  Account</a>
                        </li>
                    </c:if>


                    <c:if test="${sessionScope.acc != null}" >
                        <li class="nav-item">
                            <a class="nav-link" href="#">Hello ${sessionScope.acc.user}!</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout"> Logout</a>
                        </li>
                    </c:if>


                    <c:if test="${sessionScope.acc == null}" >
                        <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">Login</a>
                        </li>
                    </c:if>


                </ul>    
                </a>
                </form>
                </d  </div>
        </nav>
        <h1 class="text-center mt-5 ">List of Account</h1>
        <div class="container">
            <table class="table table-striped" >
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">User</th>

                        <th scope="col">Sell Account</th>
                        <th scope="col">Admin Account</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listA}" var="o">
                        <tr>
                            <th scope="row">${o.id}</th>
                            <td>${o.user}</td>

                            <td>${o.isSell ==1 ? 'Yes' : 'No'}</td>
                            <td>${o.isAdmin == 1 ? 'Yes' : 'No'}</td>
                        </tr>
                    </c:forEach>


                </tbody>
            </table>
        </div>

        <div class="text-center mt-5"><a href="home" class="text-center"><div class="btn btn-success">Back</div></a></div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
