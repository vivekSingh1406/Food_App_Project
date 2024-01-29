<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
      max-width: 600px;
      margin: 50px auto;
      text-align: center;
    }
    h1 {
      color: green;
      margin-bottom: 30px;
    }
    .btn-group {
      display: flex;
      justify-content: center;
    }
    .btn {
      margin: 10px;
    }
    .btn-primary {
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:hover {
      background-color: #0056b3;
      border-color: #0056b3;
    }
    .btn-success {
      background-color: #28a745;
      border-color: #28a745;
    }
    .btn-success:hover {
      background-color: #218838;
      border-color: #218838;
    }
  </style>
</head>
<body>

<div class="container">
  <h1>${message}</h1>
  <div class="btn-group">
    <a href="addproduct" class="btn btn-primary">Add Product</a>
    <a href="viewallproducts" class="btn btn-success">View All Products</a>
  </div>
</div>

</body>
</html>