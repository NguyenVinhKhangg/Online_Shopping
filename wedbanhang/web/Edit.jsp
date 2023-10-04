<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>


        <style>
            form{
                padding-left: 15%;
                padding-right: 15%;
            }
        </style>


    </head>
    <body>

    <center><h2>Update</h2></center>
    <form action="edit" method="post" >
        <div class="form-group row">
            <label for="name" class="col-4 col-form-label">ID</label> 
            <div class="col-8">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-address-card"></i>
                        </div>
                    </div> 
                    <input value="${d.id}" id="id" name="id" type="text" class="form-control" readonly required>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label for="name" class="col-4 col-form-label">Name</label> 
            <div class="col-8">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-address-card"></i>
                        </div>
                    </div> 
                    <input value="${d.name}" id="name" name="name" type="text" class="form-control">
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label for="img" class="col-4 col-form-label">Image</label> 
            <div class="col-8">
                <input value="${d.image}" id="img" name="img" type="text" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label for="price" class="col-4 col-form-label">Price</label> 
            <div class="col-8">
                <input value="${d.price}" id="price" name="price" type="text" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label for="title" class="col-4 col-form-label">Title</label> 
            <div class="col-8">
                <input value="${d.title}" id="title" name="title" type="text" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label for="descrip" class="col-4 col-form-label">Description</label> 
            <div class="col-8">
                <input value="${d.description}" id="descrip" name="descrip" type="text" class="form-control">
            </div>
        </div> 
        <div class="form-group row">
            <label for="select" class="col-4 col-form-label">Select</label> 
            <div class="col-8">
                <select id="select" name="cate" class="custom-select">
                    <c:forEach items="${listC}" var="o">
                        <option  value="${o.cid}">${o.cname}</option>
                    </c:forEach>
                </select>
            </div>
        </div> 
        <div class="form-group row">
            <label for="descrip" class="col-4 col-form-label">Quantity</label> 
            <div class="col-8">
                <input value="${d.quantily}" id="quan" name="quan" type="text" class="form-control">
            </div>
        </div> 
        <div class="form-group row">
            <div class="offset-4 col-8">
                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</body>
</html>
