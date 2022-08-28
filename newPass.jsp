<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="newPassword" method="post">
   
   <input type="text" value="${req.getAttribute("uid") }"  name="uID">
   Enter New Password<input type="password"  name="pass">
  <button>Reset Password</button>
</form>
</body>
</html>