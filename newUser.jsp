<html>
<head>
<meta charset="UTF-8">


    <title>TODO-New User</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
  <style>
     nav
     {
       
       background-color:black;
     }
     
 
 
  </style>



</head>


<body>

   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="homePage" style="color:white">TODO-App</a>
    </div>
   
  </div>
</nav>




<center>
    <div class="container" style="margin-top:50px">
  <center><h2>Signup For New User</h2></center>
 
  <form action="userReg" class="was-validated" method="post">
   
    <div class="form-group" style="margin-top:50px">
     
      <input type="text" class="form-control"  placeholder="Enter Your Name" name="uname" required>
     
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
 
 
 
    <div class="form-group">
      <input type="text" class="form-control" name="uID" placeholder="Your UserID">
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
   
    <div class="form-group">
      <input type="password"  class="form-control" name="pass" placeholder="Your Password">
     
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
   
    <div class="form-group">
      <input type="password" class="form-control" placeholder=" Confirm Your Password">
     
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
   
   <center> <button type="submit" class="btn btn-primary">Submit</button> </center>
  </form>
</div>

</center>




   
 
   
</body>
</html>