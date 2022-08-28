<html>


<head>
     
 

 <title>TODO Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     

</head>




<body>


   
   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="homeTodo">TODO-App</a>
    </div>
   
    <ul class="nav navbar-nav navbar-right">
      <li><a href="newUser"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    </ul>
  </div>
</nav>


<center>
<div class="container">
  <h2>TODO LOGIN</h2>
  <br><br>
  <form class="form-horizontal" action="login" method="get">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Enter UserID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter UserID" name="uid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pass">
      </div>
    </div>
   
    <br><br>
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
        <button type="submit" class="btn btn-default">Login</button>
       
        <br><br>
       
         <a href="changePass">Forgot Password</a>
      </div>

    </div>
  </form>
</div>
</center>
 








</body>
</html>
