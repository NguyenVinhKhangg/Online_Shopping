<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
        <ul class="list-group category_block">

            <c:forEach items="${listC}" var="o">
                <li class="list-group-item" style="background-color: lightgray; color: black; ${tag == o.cid ? "active":""}">
                    <a href="cate?cid=${o.cid}">${o.cname}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
    <div class="card bg-light mb-3">


        <c:if test="${not empty p}">
            <div class="card-header bg-success text-white text-uppercase">Last Product</div>
            <div class="card-body">

                <img class="img-fluid" src="${p.image}" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title show_txt"><a href="detail?pid=${p.id}" title="View Product">${p.name}</a></h4>
                    <p class="card-text show_txt">${p.title}</p>
                    <div class="row">
                        <div class="col">
                            <p class="btn btn-danger btn-block">${p.price}</p>
                        </div>
                    </div>

                </c:if>
            </div>
        </div>
    </div>
</div>