<%@page import="com.jsp.foodapp.entities.Product"%>
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
      background-color: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h2 {
      text-align: center;
      margin-bottom: 30px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    input[type="submit"] {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

<div class="container">
  <%  Product product = (Product) request.getAttribute("productdata") ; %>
  <h2>Update Product</h2>
  <form action="updateprod" method="post">
    <div class="form-group">
      <label for="id">Enter ID:</label>
      <input type="number" class="form-control" id="id" name="id" value="<%= product.getId() %>" readonly>
    </div>
    <div class="form-group">
      <label for="name">Enter Name:</label>
      <input type="text" class="form-control" id="name" name="name" value="<%= product.getName() %>">
    </div>
    <div class="form-group">
      <label for="type">Enter Type:</label>
      <input type="text" class="form-control" id="type" name="type" value="<%= product.getType() %>">
    </div>
    <div class="form-group">
      <label for="cost">Enter Cost:</label>
      <input type="number" class="form-control" id="cost" name="cost" value="<%= product.getCost() %>">
    </div>
    <input type="submit" class="btn btn-primary" value="Update">
  </form>
</div>

</body>
</html>