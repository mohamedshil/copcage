<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Cupcake</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">Home</a></li>  
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li class="active"><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            
            <h2>Shop - Login</h2>

            <form action="Controller" method="post">
                <div class="form-group">

                    <input type="hidden" name="orgin" value="login" class="form-control">
                </div>
                <div class="form-group">
                    <label for="username">Usename:</label>
                    <input type="text" name="username" class="form-control"  id="username"  placeholder="Enter username">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" name="pass" class="form-control" id="pwd"  placeholder="Enter password">
                </div>
                
                <button type="submit" name="login" class="btn btn-default">Login</button>
            </form>
        </div>




    </body>
</html>