<!DOCTYPE html>
<html lang="en">
<head>
  <title>Register</title>
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
      <li><a href="menu.html">Home</a></li>     
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
	<h2> Registeration </h2>
        <form action="ControlNewCustomer" method="post">
    <div class="form-group">
      <label for="username">Usename:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
	<div class="form-group">
      <label for="pwd">Balance:</label>
      <input type="text" class="form-control" id="blc" placeholder="Enter your balance">
    </div>
   
    <button type="submit" class="btn btn-default">Register</button>
  </form>
</div>

</body>
</html>
