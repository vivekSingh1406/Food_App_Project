<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
    }
    .container {
      max-width: 400px;
      margin: 50px auto;
      background-color: #fff;
      border-radius: 8px;
      padding: 40px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h2 {
      text-align: center;
      margin-bottom: 30px;
    }
    .btn {
      width: 100%;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>

<div class="container">
  <h2>Admin-Panel</h2>
  <a href="addadmin" class="btn btn-primary">Create Account</a>
  <a href="loginadmin.jsp" class="btn btn-secondary">Login</a>
</div>

</body>
</html>