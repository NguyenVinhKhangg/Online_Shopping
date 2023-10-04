<%@page import="entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="dao.DAO"%>
<%@page import="entity.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">Yu-Gi-Oh!</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">

                 <li class="nav-item">
                        <a class="nav-link" href="home">Home</a>
                    </li>
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

            <!--Thanh search ne  -->
            <!-- nhap vao day truyen Servlet tên Search  -->
            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input value="${txtsea}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="cart">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light"><%
                        DAO dao = new DAO();
                        Account acc = (Account) request.getSession().getAttribute("acc");
                        if (acc != null) {
                            List<Cart> carts = dao.getCartsByUserID(acc.getId());
                            int numberOfItem = 0;
                            for (Cart cart : carts) {
                                numberOfItem += cart.getAmount();
                            }
                            out.print(numberOfItem);
                        }
                        %></span>
                </a>
            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Genuine Yugioh TCG Supermarket</h1>
        <p class="lead text-muted mb-0">All products are authentic</p>
    </div>
</section>
<!--end of menu-->