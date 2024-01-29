<%@page import="com.jsp.foodapp.entities.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
   <% Item i = (Item) request.getAttribute("itemobj"); %>
  <h2>Add Item to Food Order</h2>
  <form action="additemtofoodorder" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" name="name" value="<%= i.getName() %>" readonly="true" />
    </div>
    <div class="form-group">
      <label for="type">Type:</label>
      <input type="text" class="form-control" id="type" name="type" value="<%= i.getType() %>" readonly="true" />
    </div>
    <div class="form-group">
      <label for="cost">Cost:</label>
      <input type="text" class="form-control" id="cost" name="cost" value="<%= i.getCost()%>" readonly="true" />
    </div>
    <div class="form-group">
      <label for="quantity">Quantity:</label>
      <input type="number" class="form-control" id="quantity" name="quantity" required>
    </div>
    <input type="submit" class="btn btn-primary" value="Add to Order">
  </form>
</div>

</body>
</html>