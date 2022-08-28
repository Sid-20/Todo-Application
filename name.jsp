<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>TODO-Change Name</title>
</head>
<body>



   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="homePage">TODO-App</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="homePage">Home</a></li>
      <li class="active"><a href="deleteUser">Delete My Account</a></li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Edit Profile
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="changePass">Change Password</a> <br>
        <a class="dropdown-item" href="changeName">Change Name</a> <br>
       
      </div>
    </li>
     
     
    </ul>
   
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout">LogOut</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <li><a href="deleteTask">Remove Task</a></li>
    </ul>
   
   
   
  </div>
</nav>


<center>
<div class="container">
  <h2>Change Your Name</h2>
  <br><br>
  <form class="form-horizontal" action="checkIDName" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">Enter UserID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Enter UserID" name="uID" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Change Your Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Name" name="uname">
      </div>
    </div>
   
    <br><br>
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
        <button type="submit" class="btn btn-default">Confirm</button>
       
        <br><br>
       
       
      </div>

    </div>
  </form>
</div>
</center>
 



</body>
</html>