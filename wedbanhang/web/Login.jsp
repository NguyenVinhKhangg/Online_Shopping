<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
        <style>
            body{
                background-image: url("https://images5.alphacoders.com/967/967270.png");
                background-repeat: no-repeat;
                background-attachmet: fixed;
                background-size : 100% 100%
            }
            #logreg-forms .form-signin,
            #logreg-forms .form-signup {
                width: 50% !important;
                margin: 0 auto !important;
            }

        </style>
    </head>
    <body>
        <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
        <div id="logreg-forms" style="padding-top: 10%">
            <form class="form-signin" action="login" method="post">
                <style>
                    .h3 {
                        text-align: center;
                        color: green;
                        text-transform: uppercase;
                    }
                </style>
                </head>
                <body>
                    <h1 class="h3 mb-3 font-weight-lighter" style="font-size: 70;font-family: impact; color: white;">Login</h1>

                    <!-- Các phần còn lại của trang đăng nhập -->
                </body>

                <strong class="text-warning" style="color: red !important">${mess}</strong>

            <input name="user" value="${cookie.cuser.value}" type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                <input name="pass" value="${cookie.cpass.value}" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">

                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox"  class="form-check-input" id="exampleCheck1" ${cookie.crem != null ? "check":"" }>
                    <label class="form-check-label" style="color: white;" for="exampleCheck1">Remember me</label>
                </div>

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Login</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus" ></i><a style="color: white;" href="Signup.jsp" > Sign up New Account</a></button>
            </form>

          

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        
    </body>
</html>