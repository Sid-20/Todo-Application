<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title><c:out value="${page }"></c:out></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 
 
 
 
 
 
</head>
<body>

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="homePage">TODO-App</a>
    </div>
    <ul class="nav navbar-nav">
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



   <div class="container mt-3">
       
        <center><h2>Welcome to Todo-App</h2></center>
       
        <c:if test="${not empty msg }">
       
         <div class="alert alert-success">
            <b><c:out value="${msg }"></c:out></b>
         </div>
         
       
        </c:if>
       
       
        <div class="row">
       
          <div class="col-md-2">
           
             <div class="list-group">
                 <button type="button" class="list-group-item list-group-item-action active">Menu</button>
                 <a href='<c:url value='add'></c:url>' class="list-group-item list-group-item-action">Add ToDo</a>
                 <a href='<c:url value='home'></c:url>'   class="list-group-item list-group-item-action">View ToDo</a>
                 
                 
             
             </div>
          </div>
         
         
          <div class="col-md-10">
             <c:if test="${page=='home' }">
                <h3>Your Tasks are listed as</h3>
               
               
                <c:forEach items="${todos }" var="t">
                   <div class="card" style="border: 0.12px solid grey;margin:20px">
                      <div class="card-body">
                     
                       <h3> <c:out value="${t.todoID.charAt(0) }"></c:out>  <center>  <c:out value="${t.todoTitle }"></c:out> </center> </h3>
                      <center>  <h4><c:out value="${t.todoContent }"></c:out></h4> </center> <br>
                     
                      </div>
                  </div>
                </c:forEach>
               
               
               
                   
             </c:if>
             
             <c:if test="${page=='add' }">
                 <h3 class="text-center" style="margin-top:50px">Add a New Task to Your List</h3>
                 
                    <form:form action="saveTodo" method="post" modelAttribute="todo">
                    <br>
                   
                        <div class="form-group">
                             <form:input path="todoID" cssClass="form-control" placeholder="Enter Priority Number"/>
                        </div>
                       
                       
                        <div class="form-group">
                             <form:input path="todoTitle" cssClass="form-control" placeholder="Enter Todo title"/>
                        </div>
                       
                        <div class="form-group">
                             <form:textarea path="todoContent" cssClass="form-control" placeholder="Enter Todo content" cssStyle="height:100px"/>
                        </div>
                       
                       
                       
                       
                         <button class="btn btn-outline-success " style="margin-left:45%">Add ToDo</button>
                       
                       
                 
                 
                 
                    </form:form>
                 
                 
                 
                 
             </c:if>
          </div>
       
         </div>
  </div>
 
 

</body>
</html>