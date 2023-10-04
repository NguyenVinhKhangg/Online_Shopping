<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
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
        <style>
            .h3 {
                text-align: center;
                color: green;
                text-transform: uppercase;
            }
        </style>



        <div id="logreg-forms" style="padding-top: 10%">

            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-lighter" style="font-size: 70;font-family: impact; color: white; "> Sign up</h1>
                <strong class="text-warning" style="color: red !important;font-size: 20px">${mess}</strong>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus=""><br>
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus=""><br>
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus=""><br>

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="Login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i>Back</a>
            </form>
            <br>


        </div>



    </body>
</html>
