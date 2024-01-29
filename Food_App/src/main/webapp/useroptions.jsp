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
      padding: 50px;
    }
    .container {
      max-width: 500px;
      margin: auto;
    }
    .order-link {
      display: block;
      text-align: center;
      padding: 10px;
      background-color: #007bff;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    .order-link:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

<div class="container">
  <a href="createorder" class="order-link">Order Food</a>
</div>

</body>
</html>